module Api::V1
  class MemesController < ApplicationController
    # Controller Code

    before_action :set_meme, only: [:show, :update, :destroy]

    # GET /memes
    def index
      if params[:station_id].present?
        if params[:order_by] == "asc"
          memes = Meme.by_station(params[:station_id]).sort_by_post_time_asc
        elsif params[:order_by] == "like"
          memes = Meme.by_station(params[:station_id]).sort_by_total_likes
        else
          memes = Meme.by_station(params[:station_id]).sort_by_post_time_desc
        end
        render json: memes, status: :ok
      elsif params[:user_id].present?
        if params[:order_by] == "asc"
          memes = Meme.by_user(params[:user_id]).sort_by_post_time_asc
        elsif params[:order_by] == "like"
          memes = Meme.by_user(params[:user_id]).sort_by_post_time_likes
        else
          memes = Meme.by_user(params[:user_id]).sort_by_post_time_desc
        end
        render json: memes, status: :ok
      else
        render json: {status: "error", code: 3000, message: "No station id provided"}
      end
    end

    # GET /memes/1
    def show
      render json: @meme
    end

    # POST /memes
    def create
      @meme = Meme.new(meme_params)
      @meme.post_time = DateTime.now

      if @meme.save
        render json: "completed" #@meme, status: :created, location: @meme
      else
        render json: @meme.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /memes/1
    def update
      if @meme.update(meme_params)
        render json: @meme
      else
        render json: @meme.errors, status: :unprocessable_entity
      end
    end

    # DELETE /memes/1
    def destroy
      @meme.destroy
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_meme
      @meme = Meme.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def meme_params
      params.permit(:station_id, :user_id, :post_time, :e1_like, 
                    :e2_like, :e3_like, :e4_like, :image_url)
    end
    
  end
end
