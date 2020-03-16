class RoundsController < ApplicationController
    def create
        round = Round.new(round_params)
        conversation = Conversation.find(round_params[:conversation_id])
        if round.save
          serialized_data = ActiveModelSerializers::Adapter::Json.new(
            RoundSerializer.new(round)
          ).serializable_hash
          RoundsChannel.broadcast_to conversation, serialized_data
          head :ok
        end
      end
      
      private
      
      def round_params
        params.require(:round).permit(:question, :options, :answer, :game_id)
      end
end
