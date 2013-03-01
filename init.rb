require 'redmine_estimated_time_summary/hooks'

Redmine::Plugin.register :redmine_estimated_time_summary do
  name 'Redmine Estimated Time Summary'
  author 'Michal Gritzbach'
  description 'Sum of estimated times of the ternary nodes in issues list'
  version '0.0.1'
  url 'http://github.com/muhal/redmine_estimated_time_summary'
  author_url 'http://github.com/muhal'
end

Rails.configuration.to_prepare do
  require_dependency 'issues_helper'
  IssuesHelper.send(:include, RedmineEstimatedTimeSummary::Patches::IssuesHelperPatch)
end
