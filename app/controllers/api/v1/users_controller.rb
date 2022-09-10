module Api
  module V1
    class UsersController < ApiController
      # >> GET >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

      def index
        render json: User.all
      end

      def show
        render json: User.find(params[:id])
      end

      # >> POST >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

      def create
        user = User.new(user_params)

        return render json: user, status: :created if user.save

        render json: user.errors, status: :unprocessable_entity
      end

      # >> PATCH/PUT >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

      def update
        user = User.find(params[:id])

        return render json: user if user.update(user_params)

        render json: user.errors, status: :unprocessable_entity
      end

      # >> DELETE >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

      def destroy
        user = User.find(params[:id])

        user.destroy
      end

      private

      # == Interactor =============================================================================

      # == Method =================================================================================

      # == Params =================================================================================

      def user_params
        params.require(:user).permit(:name, :likes, :country_id)
      end

      # == Poros ==================================================================================

      # == Scope ==================================================================================

      # == Serializer =============================================================================
    end
  end
end
