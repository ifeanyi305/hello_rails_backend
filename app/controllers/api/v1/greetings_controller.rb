module Api
  module V1
    class GreetingsController < ApplicationController
      def index
        greetings = Greeting.order('Random()').first
        render json: greetings
      end
    end
  end
end
