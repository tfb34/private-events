class Event < ApplicationRecord
	scope :past, -> {where("date < ?", Time.now)}
	scope :upcoming, -> {where("date > ?", Time.now)}
	#has_many :ideas
	#what are users? people that have reserved or people that have been invited?
	#has_many :users, through: :ideas
	#belongs_to :creator, :class_name => "User"
	#has_many :invitations, :foreign_key => :invite 
	#has_many :invitees, :through => :invitations, :source => :create_event
	#belongs_to :creator, :class_name => "User"

	has_many :invites, :foreign_key => :authored_event_id
	has_many :attendees, :through => :invites, :source => :event_author
	belongs_to :creator, :class_name => "User"

	#def self.past
	#	where("date < ?", Time.now)
	#end

	#def self.upcoming
	#	where("date > ?", Time.now)
	#end
end
