class User < ApplicationRecord
	has_secure_password
    validates(:password, presence:true, allow_nil: true)
    validates(:name, presence:true)
    validates(:email, presence:true)

    #has_many :ideas
    #has_many :events, through: :ideas
   #  has_many :events, :foreign_key => "creator_id"
    #has_many :creators, :class_name => "Event", :foreign_key => "creator_id"
    #has_many :events, foreign_key =>"creator_id"
    #the above line does not work so we have to change up some names
    #let's get rid of ideas and replace it with invitation

    #THis below works
    #we have access to invitations table and will populate create_event_id with our ID
    #has_many :invitations, :foreign_key => :create_event_id
    #has_many :invites, :through => :invitations
    #has_many :created_events, :foreign_key => :creator_id, :class_name => "Event"
    
    #events we created
    has_many :invites, :foreign_key => :event_author_id
    #has_many :authored_events, :through => :invites
    has_many :attending_events, :through => :invites, :source => :authored_event
    #association name is by default the 
    #name of the table to look up
    #foreign_key is the name_id
    #build-> preopulates foreign key
    #otherwise just searches for its id in the foreign_key column
    has_many :events, :foreign_key => :creator_id

end
