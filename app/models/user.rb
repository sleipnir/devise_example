class User < Neo4j::Model
  devise :database_authenticatable, :confirmable, :lockable, :recoverable,
         :rememberable, :registerable, :trackable, :timeoutable, :validatable,
         :token_authenticatable

  attr_accessible :email, :password, :password_confirmation

  property :name
  property :email
  property :password

  index :email
  index :name
end
