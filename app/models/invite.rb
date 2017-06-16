class Invite < ApplicationRecord
	#name of the association by default tells Rails 
	#that the Invites table has an event_author_id column and to search the event_author table
	#however, the name of the column does not correspond to the correct class.
	#there is no event_author table, so tell rails which table to search
	belongs_to :event_author, :class_name => "User"
	belongs_to :authored_event, :class_name=> "Event"
end
