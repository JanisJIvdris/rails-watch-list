# frozen_string_literal: true

class Movie < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true, uniqueness: true
  has_many :bookmarks, dependent: :destroy
  has_many :lists, through: :bookmarks
end
