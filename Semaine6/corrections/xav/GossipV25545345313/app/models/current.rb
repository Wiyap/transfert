class Current < ActiveSupport::CurrentAttributes
    #helps to set variables that depend on current sttings (log or not, weather)
    #useful to share info with all our views
    attribute :user
end 