class NonClickbaitValidator < ActiveModel::Validator
    def validate(record)
    unless 
            record.title =~ (/Won't Believe | Secret | Top [number] | Guess/)
            #binding.pry
            record.errors[:category] << "is not a valid size."
        end   
    end
end