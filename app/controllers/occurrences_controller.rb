# frozen_string_literal: true

class OccurrencesController < ApplicationController
  def create
    occurrence = Occurrence.new(occurrence_params)

    if occurrence.save
      render json: occurrence, status: :created
    else
      render json: { errors: occurrence.errors }, status: :unprocessable_entity
    end
  end

  def index
    occurrences = Occurrence.all

    render json: occurrences, status: :ok
  end

  def show
    occurrences = Occurrence.find(params[:id])

    render json: occurrences, status: :ok
  end

  def update
    occurrence = Occurrence.find(params[:id])

    if occurrence.update(occurrence_params)
      render json: occurrence, status: :ok
    else
      render json: { errors: occurrences.errors }, status: :unprocessable_entity
    end
  end

  private

  def occurrence_params
    params.require(:occurrence).permit(:test, :expression, :emotion)
  end
end
