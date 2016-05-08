class WelcomeController < ApplicationController
  def index
    @people = EmojiList.people
    @nature = EmojiList.nature
    @objects = EmojiList.objects
    @places = EmojiList.places
    @symbols = EmojiList.symbols
  end

  def random
    @random = EmojiList.random
  end
end
