# frozen_string_literal: true

class User < ApplicationRecord
  validates :email, :username, :password, presence: true
end
