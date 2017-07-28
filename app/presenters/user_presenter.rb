class UserPresenter < Presenter
  def self.as_json(obj, fields)
    super(obj, fields)
  end
end
