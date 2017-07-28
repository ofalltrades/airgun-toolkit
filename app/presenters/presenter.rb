class Presenter
  def self.as_json(obj, fields)
    # # This works because:
    # #  > mongo_criteria.to_a #-> [first, second, ..., last]
    # #  > mongo_criteria.first.to_a #-> [first]
    # obj_class = obj.to_a.first.class.to_s
    this_class = self.to_s.gsub('Presenter', '')

    # Then is is a collection
    Jbuilder.new do |json|
      json.data do
        if obj.class.to_s != this_class
          json.array! obj do |el|
            json.id el.id.to_s
            json.(el, *fields)
          end
        else
          json.id obj.id.to_s
          json.attributes { json.(obj, *fields) }
        end
      end
    end.target!
  end
end
