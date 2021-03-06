module Slugifiable
  module ClassMethods
    def find_by_slug(s)
      self.all.detect {|list| list.slug == s}
    end
  end

  module InstanceMethods
    def slug
      self.username.downcase.gsub(" ", "-")
    end
  end
end
