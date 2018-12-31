module ApplicationHelper

    def date_to_br(date)
        date.strftime("%d/%m/%Y")
    end

    def actual_environment
        case Rails.env
        when "development"
            "Desenvolvimento"
        when "production"
            "Produção"
        when "test"
            "Teste"
        else
            Rails.env
        end
    end
    
end
