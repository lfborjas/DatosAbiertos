class FeedDecorator < Draper::Decorator
  delegate_all

  def name
    source.name.titleize
  end
end
