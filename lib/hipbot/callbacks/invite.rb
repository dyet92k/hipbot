module Hipbot
  module Callbacks
    class Invite < Base
      def initialize room_id, user_name, room_name, topic
        return unless Hipbot.configuration.join_on_invite

        with_room(id: room_id, name: room_name, topic: topic) do |room|
          Hipbot.join_room(room)
        end
      end
    end
  end
end
