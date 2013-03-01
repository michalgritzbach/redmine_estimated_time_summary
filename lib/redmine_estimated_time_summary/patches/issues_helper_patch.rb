module RedmineEstimatedTimeSummary
  module Patches
    module IssuesHelperPatch
      def self.included(base)
        base.class_eval do
          unloadable

          def sum_estimated_times(issues)
            s = 0
            issues.each do |issue|
              s += issue.estimated_hours if issue.estimated_hours and issue.leaf?
            end
            s
          end
        end
      end
    end
  end
end
