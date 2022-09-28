class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: ["Fiction","Non-Fiction"]

    #custom validation
    def title_check 
        unless :title.include?("Won't Believe") || :title.include?("Secret") || :title.include?("Top [number]") || :title.include?("Guess")
            erros.add(:title, " True Facts")
        end
    end
end
