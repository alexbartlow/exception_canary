module ExceptionCanary
  module GroupsHelper
    def sortable(column, title = nil)
      title ||= column.titleize
      icon =
        if column == sort_column
          (sort_direction == 'asc' ? '<i class="icon-chevron-up"></i>' : '<i class="icon-chevron-down"></i>')
        end
      css_class = column == sort_column ? 'current' : nil
      direction = column == sort_column && sort_direction == 'asc' ? 'desc' : 'asc'
      link_to "#{title} #{icon}".html_safe, { sort: column, direction: direction }, class: css_class
    end

    def action_name(action)
      case action
      when Group::ACTION_NOTIFY
        'Notify'
      when Group::ACTION_SUPPRESS
        'Suppress'
      end
    end

    def match_type_name(match_type)
      case match_type
      when Group::MATCH_TYPE_EXACT
        'Exact'
      when Group::MATCH_TYPE_REGEX
        'Regex'
      end
    end
  end
end
