# frozen_string_literal: true

class Api::V1::ResultsController < ApplicationController
  def create
    render json: ResultPresenter.new(params).result
  end
end
