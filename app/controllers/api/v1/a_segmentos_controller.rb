module Api
  module V1
    class ASegmentosController < ApplicationController
      before_action :set_a_segmento, only: %i[show update destroy]

      def index
        @a_segmentos = ::ASegmento.all
        render json: { data: @a_segmentos }
      end

      def show
        render json: { data: @a_segmento }
      end

      def create
        @a_segmento = ::ASegmento.new(a_segmento_params)

        if @a_segmento.save
          render json: { data: @a_segmento }, status: :created
        else
          render json: { errors: @a_segmento.errors }, status: :unprocessable_entity
        end
      end

      def update
        if @a_segmento.update(a_segmento_params)
          render json: { data: @a_segmento }
        else
          render json: { errors: @a_segmento.errors }, status: :unprocessable_entity
        end
      end

      def destroy
        @a_segmento.destroy!
        head :no_content
      end

      private

      def set_a_segmento
        @a_segmento = ::ASegmento.find(params[:id])
      end

      def a_segmento_params
        params.require(:a_segmento).permit(:descricao, :a_categoria_id)
      end
    end
  end
end
