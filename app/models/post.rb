class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: { minimum: 250}
    validates :summary, length: { maximum: 250}
    validates :category, inclusion: { in: ["Fiction", "Non-Fiction"]}
    validate :title_is_clickbait

    # Custom Validation

    def title_is_clickbait
        if title == 'True Facts'
            errors.add(:title, "Sorry not allowed")

        end
    end
end
