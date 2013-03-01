module RedmineEstimatedTimeSummary
  class Hooks < Redmine::Hook::ViewListener
    render_on :view_issues_index_bottom, :partial => 'issues/sum_estimated_time'
  end
end
