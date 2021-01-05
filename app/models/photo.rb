# frozen_string_literal: true

class Photo < ApplicationRecord
  belongs_to :user, optional: true

  # 封面图
  mount_uploader :image, PhotoUploader
  after_commit :remove_image!, on: :destroy
end
