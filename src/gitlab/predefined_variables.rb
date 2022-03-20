# frozen_string_literal: true

# noinspection RubyTooManyMethodsInspection
class Gitlab::PredefinedVariables
  # The additional arguments passed with the ChatOps command.
  def chat_input
    ENV['CHAT_INPUT']
  end

  # The Source chat channel that triggered the ChatOps command.
  def chat_channel
    ENV['CHAT_CHANNEL']
  end

  # The chat service’s user ID of the user who triggered the ChatOps command.
  def chat_user_id
    ENV['CHAT_USER_ID']
  end

  # Available for all jobs executed in CI/CD. true when available.
  def ci
    ENV['CI']
  end

  # The GitLab API v4 root URL.
  def ci_api_v4_url
    ENV['CI_API_V4_URL']
  end

  # The top-level directory where builds are executed.
  def ci_builds_dir
    ENV['CI_BUILDS_DIR']
  end

  # The author of the commit in Name <email> format.
  def ci_commit_author
    ENV['CI_COMMIT_AUTHOR']
  end

  # The previous latest commit present on a branch. Is always 0000000000000000000000000000000000000000 in
  # merge request pipelines.
  def ci_commit_before_sha
    ENV['CI_COMMIT_BEFORE_SHA']
  end

  # The commit branch name. Available in branch pipelines, including pipelines for the default branch.
  # Not available in merge request pipelines or tag pipelines.
  def ci_commit_branch
    ENV['CI_COMMIT_BRANCH']
  end

  # The description of the commit. If the title is shorter than 100 characters, the message without the first line.
  def ci_commit_description
    ENV['CI_COMMIT_DESCRIPTION']
  end

  # The full commit message.
  def ci_commit_message
    ENV['CI_COMMIT_MESSAGE']
  end

  # The branch or tag name for which project is built.
  def ci_commit_ref_name
    ENV['CI_COMMIT_REF_NAME']
  end

  # true if the job is running for a protected reference.
  def ci_commit_ref_protected
    ENV['CI_COMMIT_REF_PROTECTED']
  end

  # CI_COMMIT_REF_NAME in lowercase, shortened to 63 bytes, and with everything except 0-9 and a-z replaced with -.
  # No leading / trailing -. Use in URLs, host names and domain names.
  def ci_commit_ref_slug
    ENV['CI_COMMIT_REF_SLUG']
  end

  # The commit revision the project is built for.
  def ci_commit_sha
    ENV['CI_COMMIT_SHA']
  end

  # The first eight characters of CI_COMMIT_SHA.
  def ci_commit_short_sha
    ENV['CI_COMMIT_SHORT_SHA']
  end

  # The commit tag name. Available only in pipelines for tags.
  def ci_commit_tag
    ENV['CI_COMMIT_TAG']
  end

  # The timestamp of the commit in the ISO 8601 format.
  def ci_commit_timestamp
    ENV['CI_COMMIT_TIMESTAMP']
  end

  # The title of the commit. The full first line of the message.
  def ci_commit_title
    ENV['CI_COMMIT_TITLE']
  end

  # The unique ID of build execution in a single executor.
  def ci_concurrent_id
    ENV['CI_CONCURRENT_ID']
  end

  # The unique ID of build execution in a single executor and project.
  def ci_concurrent_project_id
    ENV['CI_CONCURRENT_PROJECT_ID']
  end

  # The path to the CI/CD configuration file. Defaults to .gitlab-ci.yml. Read-only inside a running pipeline.
  def ci_config_path
    ENV['CI_CONFIG_PATH']
  end

  # true if debug logging (tracing) is enabled.
  def ci_debug_trace
    ENV['CI_DEBUG_TRACE']
  end

  # The name of the project’s default branch.
  def ci_default_branch
    ENV['CI_DEFAULT_BRANCH']
  end

  # The top-level group image prefix for pulling images through the Dependency Proxy.
  # noinspection RubyInstanceMethodNamingConvention
  def ci_dependency_proxy_group_image_prefix
    ENV['CI_DEPENDENCY_PROXY_GROUP_IMAGE_PREFIX']
  end

  # The direct group image prefix for pulling images through the Dependency Proxy.
  # noinspection RubyInstanceMethodNamingConvention
  def ci_dependency_proxy_direct_group_image_prefix
    ENV['CI_DEPENDENCY_PROXY_DIRECT_GROUP_IMAGE_PREFIX']
  end

  # The password to pull images through the Dependency Proxy.
  def ci_dependency_proxy_password
    ENV['CI_DEPENDENCY_PROXY_PASSWORD']
  end

  # The server for logging in to the Dependency Proxy. This is equivalent to $CI_SERVER_HOST:$CI_SERVER_PORT.
  def ci_dependency_proxy_server
    ENV['CI_DEPENDENCY_PROXY_SERVER']
  end

  # The username to pull images through the Dependency Proxy.
  def ci_dependency_proxy_user
    ENV['CI_DEPENDENCY_PROXY_USER']
  end

  # Only available if the pipeline runs during a deploy freeze window. true when available.
  def ci_deploy_freeze
    ENV['CI_DEPLOY_FREEZE']
  end

  # The authentication password of the GitLab Deploy Token, if the project has one.
  def ci_deploy_password
    ENV['CI_DEPLOY_PASSWORD']
  end

  # The authentication username of the GitLab Deploy Token, if the project has one.
  def ci_deploy_user
    ENV['CI_DEPLOY_USER']
  end

  # Only available if the job is executed in a disposable environment (something that is created only for this job
  # and disposed of/destroyed after the execution - all executors except shell and ssh). true when available.
  def ci_disposable_environment
    ENV['CI_DISPOSABLE_ENVIRONMENT']
  end

  # The name of the environment for this job. Available if environment:name is set.
  def ci_environment_name
    ENV['CI_ENVIRONMENT_NAME']
  end

  # The simplified version of the environment name, suitable for inclusion in DNS, URLs, Kubernetes labels,
  # and so on. Available if environment:name is set. The slug is truncated to 24 characters.
  def ci_environment_slug
    ENV['CI_ENVIRONMENT_SLUG']
  end

  # The URL of the environment for this job. Available if environment:url is set.
  def ci_environment_url
    ENV['CI_ENVIRONMENT_URL']
  end

  # The action annotation specified for this job’s environment. Available if environment:action is set.
  # Can be start, prepare, or stop.
  def ci_environment_action
    ENV['CI_ENVIRONMENT_ACTION']
  end

  # The deployment tier of the environment for this job.
  def ci_environment_tier
    ENV['CI_ENVIRONMENT_TIER']
  end

  # Only available if the pipeline’s project has an open requirement. true when available.
  def ci_has_open_requirements
    ENV['CI_HAS_OPEN_REQUIREMENTS']
  end

  # The internal ID of the job, unique across all jobs in the GitLab instance.
  def ci_job_id
    ENV['CI_JOB_ID']
  end

  # The name of the Docker image running the job.
  def ci_job_image
    ENV['CI_JOB_IMAGE']
  end

  # A RS256 JSON web token to authenticate with third party systems that support JWT authentication,
  # for example HashiCorp’s Vault.
  def ci_job_jwt
    ENV['CI_JOB_JWT']
  end

  # The same value as CI_JOB_JWT.
  def ci_job_jwt_v1
    ENV['CI_JOB_JWT_V1']
  end

  # alpha: A newly formatted RS256 JSON web token to increase compatibility. Similar to CI_JOB_JWT, except the
  # issuer (iss) claim is changed from gitlab.com to https://gitlab.com, sub has changed from job_id to a string
  # that contains the project path, and an aud claim is added. Format is subject to change. Be aware, the aud
  # field is a constant value. Trusting JWTs in multiple relying parties can lead to one RP sending a JWT to
  # another one and acting maliciously as a job.
  def ci_job_jwt_v2
    ENV['CI_JOB_JWT_V2']
  end

  # true if a job was started manually.
  def ci_job_manual
    ENV['CI_JOB_MANUAL']
  end

  # The name of the job.
  def ci_job_name
    ENV['CI_JOB_NAME']
  end

  # The name of the job’s stage.
  def ci_job_stage
    ENV['CI_JOB_STAGE']
  end

  # The status of the job as each runner stage is executed. Use with after_script. Can be success,
  # failed, or canceled.
  def ci_job_status
    ENV['CI_JOB_STATUS']
  end

  # A token to authenticate with certain API endpoints. The token is valid as long as the job is running.
  def ci_job_token
    ENV['CI_JOB_TOKEN']
  end

  # The job details URL.
  def ci_job_url
    ENV['CI_JOB_URL']
  end

  # The UTC datetime when a job started, in ISO 8601 format.
  def ci_job_started_at
    ENV['CI_JOB_STARTED_AT']
  end

  # Only available if the pipeline has a Kubernetes cluster available for deployments. true when available.
  def ci_kubernetes_active
    ENV['CI_KUBERNETES_ACTIVE']
  end

  # The index of the job in the job set. Only available if the job uses parallel.
  def ci_node_index
    ENV['CI_NODE_INDEX']
  end

  # The total number of instances of this job running in parallel. Set to 1 if the job does not use parallel.
  def ci_node_total
    ENV['CI_NODE_TOTAL']
  end

  # A comma-separated list of up to four merge requests that use the current branch and project as the merge
  # request source. Only available in branch and merge request pipelines if the branch has an associated merge
  # request. For example, gitlab-org/gitlab!333,gitlab-org/gitlab-foss!11.
  def ci_open_merge_requests
    ENV['CI_OPEN_MERGE_REQUESTS']
  end

  # The configured domain that hosts GitLab Pages.
  def ci_pages_domain
    ENV['CI_PAGES_DOMAIN']
  end

  # The URL for a GitLab Pages site. Always a subdomain of CI_PAGES_DOMAIN.
  def ci_pages_url
    ENV['CI_PAGES_URL']
  end

  # The instance-level ID of the current pipeline. This ID is unique across all projects on the GitLab instance.
  def ci_pipeline_id
    ENV['CI_PIPELINE_ID']
  end

  # The project-level IID (internal ID) of the current pipeline. This ID is unique only within the current project.
  def ci_pipeline_iid
    ENV['CI_PIPELINE_IID']
  end

  # How the pipeline was triggered. Can be push, web, schedule, api, external, chat, webide, merge_request_event,
  # external_pull_request_event, parent_pipeline, trigger, or pipeline.
  def ci_pipeline_source
    ENV['CI_PIPELINE_SOURCE']
  end

  # true if the job was triggered.
  def ci_pipeline_triggered
    ENV['CI_PIPELINE_TRIGGERED']
  end

  # The URL for the pipeline details.
  def ci_pipeline_url
    ENV['CI_PIPELINE_URL']
  end

  # The UTC datetime when the pipeline was created, in ISO 8601 format.
  def ci_pipeline_created_at
    ENV['CI_PIPELINE_CREATED_AT']
  end

  # 13.8 to 13.12	all	Removed in GitLab 14.0. Use CI_CONFIG_PATH.
  def ci_project_config_path
    ENV['CI_PROJECT_CONFIG_PATH']
  end

  # The full path the repository is cloned to, and where the job runs from. If the GitLab Runner builds_dir
  # parameter is set, this variable is set relative to the value of builds_dir. For more information, see
  # the Advanced GitLab Runner configuration.
  def ci_project_dir
    ENV['CI_PROJECT_DIR']
  end

  # The ID of the current project. This ID is unique across all projects on the GitLab instance.
  def ci_project_id
    ENV['CI_PROJECT_ID']
  end

  # The name of the directory for the project. For example if the project URL
  # is gitlab.example.com/group-name/project-1, CI_PROJECT_NAME is project-1.
  def ci_project_name
    ENV['CI_PROJECT_NAME']
  end

  # The project namespace (username or group name) of the job.
  def ci_project_namespace
    ENV['CI_PROJECT_NAMESPACE']
  end

  # $CI_PROJECT_PATH in lowercase with characters that are not a-z or 0-9 replaced with - and shortened
  # to 63 bytes. Use in URLs and domain names.
  def ci_project_path_slug
    ENV['CI_PROJECT_PATH_SLUG']
  end

  # The project namespace with the project name included.
  def ci_project_path
    ENV['CI_PROJECT_PATH']
  end

  # A comma-separated, lowercase list of the languages used in the repository.
  # For example ruby, javascript, html, css.
  # noinspection RubyInstanceMethodNamingConvention
  def ci_project_repository_languages
    ENV['CI_PROJECT_REPOSITORY_LANGUAGES']
  end

  # The root project namespace (username or group name) of the job. For example, if CI_PROJECT_NAMESPACE is
  # root-group/child-group/grandchild-group, CI_PROJECT_ROOT_NAMESPACE is root-group.
  def ci_project_root_namespace
    ENV['CI_PROJECT_ROOT_NAMESPACE']
  end

  # The human-readable project name as displayed in the GitLab web interface.
  def ci_project_title
    ENV['CI_PROJECT_TITLE']
  end

  # The HTTP(S) address of the project.
  def ci_project_url
    ENV['CI_PROJECT_URL']
  end

  # The project visibility. Can be internal, private, or public.
  def ci_project_visibility
    ENV['CI_PROJECT_VISIBILITY']
  end

  # The project external authorization classification label.
  # noinspection RubyInstanceMethodNamingConvention
  def ci_project_classification_label
    ENV['CI_PROJECT_CLASSIFICATION_LABEL']
  end

  # The address of the project’s Container Registry. Only available if the Container Registry
  # is enabled for the project.
  def ci_registry_image
    ENV['CI_REGISTRY_IMAGE']
  end

  # The password to push containers to the project’s GitLab Container Registry. Only available if the Container
  # Registry is enabled for the project. This password value is the same as the CI_JOB_TOKEN and is valid only as
  # long as the job is running. Use the CI_DEPLOY_PASSWORD for long-lived access to the registry
  def ci_registry_password
    ENV['CI_REGISTRY_PASSWORD']
  end

  # The username to push containers to the project’s GitLab Container Registry. Only available if the Container
  # Registry is enabled for the project.
  def ci_registry_user
    ENV['CI_REGISTRY_USER']
  end

  # The address of the GitLab Container Registry. Only available if the Container Registry is enabled for the
  # project. This variable includes a :port value if one is specified in the registry configuration.
  def ci_registry
    ENV['CI_REGISTRY']
  end

  # The URL to clone the Git repository.
  def ci_repository_url
    ENV['CI_REPOSITORY_URL']
  end

  # The description of the runner.
  def ci_runner_description
    ENV['CI_RUNNER_DESCRIPTION']
  end

  # The OS/architecture of the GitLab Runner executable. Might not be the same as the environment of the executor.
  def ci_runner_executable_arch
    ENV['CI_RUNNER_EXECUTABLE_ARCH']
  end

  # The unique ID of the runner being used.
  def ci_runner_id
    ENV['CI_RUNNER_ID']
  end

  # The revision of the runner running the job.
  def ci_runner_revision
    ENV['CI_RUNNER_REVISION']
  end

  # First eight characters of the runner’s token used to authenticate new job requests.
  # Used as the runner’s unique ID.
  def ci_runner_short_token
    ENV['CI_RUNNER_SHORT_TOKEN']
  end

  # A comma-separated list of the runner tags.
  def ci_runner_tags
    ENV['CI_RUNNER_TAGS']
  end

  # The version of the GitLab Runner running the job.
  def ci_runner_version
    ENV['CI_RUNNER_VERSION']
  end

  # The host of the GitLab instance URL, without protocol or port. For example gitlab.example.com.
  def ci_server_host
    ENV['CI_SERVER_HOST']
  end

  # The name of CI/CD server that coordinates jobs.
  def ci_server_name
    ENV['CI_SERVER_NAME']
  end

  # The port of the GitLab instance URL, without host or protocol. For example 8080.
  def ci_server_port
    ENV['CI_SERVER_PORT']
  end

  # The protocol of the GitLab instance URL, without host or port. For example https.
  def ci_server_protocol
    ENV['CI_SERVER_PROTOCOL']
  end

  # GitLab revision that schedules jobs.
  def ci_server_revision
    ENV['CI_SERVER_REVISION']
  end

  # The base URL of the GitLab instance, including protocol and port. For example https://gitlab.example.com:8080.
  def ci_server_url
    ENV['CI_SERVER_URL']
  end

  # The major version of the GitLab instance. For example, if the GitLab version is 13.6.1,
  # the CI_SERVER_VERSION_MAJOR is 13.
  def ci_server_version_major
    ENV['CI_SERVER_VERSION_MAJOR']
  end

  # The minor version of the GitLab instance. For example, if the GitLab version is 13.6.1,
  # the CI_SERVER_VERSION_MINOR is 6.
  def ci_server_version_minor
    ENV['CI_SERVER_VERSION_MINOR']
  end

  # The patch version of the GitLab instance. For example, if the GitLab version is 13.6.1,
  # the CI_SERVER_VERSION_PATCH is 1.
  def ci_server_version_patch
    ENV['CI_SERVER_VERSION_PATCH']
  end

  # The full version of the GitLab instance.
  def ci_server_version
    ENV['CI_SERVER_VERSION']
  end

  # Available for all jobs executed in CI/CD. yes when available.
  def ci_server
    ENV['CI_SERVER']
  end

  # Only available if the job is executed in a shared environment (something that is persisted across
  # CI/CD invocations, like the shell or ssh executor). true when available.
  def ci_shared_environment
    ENV['CI_SHARED_ENVIRONMENT']
  end

  # Available for all jobs executed in CI/CD. true when available.
  def gitlab_ci
    ENV['GITLAB_CI']
  end

  # The comma-separated list of licensed features available for the GitLab instance and license.
  def gitlab_features
    ENV['GITLAB_FEATURES']
  end

  # The email of the user who started the job.
  def gitlab_user_email
    ENV['GITLAB_USER_EMAIL']
  end

  # The ID of the user who started the job.
  def gitlab_user_id
    ENV['GITLAB_USER_ID']
  end

  # The username of the user who started the job.
  def gitlab_user_login
    ENV['GITLAB_USER_LOGIN']
  end

  # The name of the user who started the job.
  def gitlab_user_name
    ENV['GITLAB_USER_NAME']
  end

  # The webhook payload. Only available when a pipeline is triggered with a webhook
  def trigger_payload
    ENV['TRIGGER_PAYLOAD']
  end
end
