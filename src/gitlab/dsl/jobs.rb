class Gitlab::Dsl::Jobs
  def initialize(ctx)
    @ctx = ctx
    @values = []
  end

  def serialize
    return if @values.empty?

    jobs = @values.each_with_object({}) do |j, acc|
      acc[j.job_name] = j.serialize
    end
    jobs.compact
  end

  def call(job_name, parent_job = nil, &block)
    job_class = if parent_job.nil?
                  Gitlab::Dsl::Job
                else
                  unless parent_job.method_defined?(:serialize) || (parent_job.superclass == Job)
                    raise "Job class doesn't have 'serialize' method"
                  end

                  Class.new(parent_job)
                end
    job = job_class.new(@ctx, job_name)
    job.apply(&block)
    @values << job
  end
end
