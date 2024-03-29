//
//  RulesView.swift
//

import SwiftUI

struct RulesView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Background(image: BgImage.peoples)
            ScrollView {
                Text("""
Цель игры: Игрокам необходимо ответить на серию вопросов разной сложности, чтобы выиграть максимальную сумму денег.
                 
                 Формат вопросов: Вопросы могут касаться различных тематик, от общих знаний до актуальных событий и исторических фактов.

                 Структура игры: Игра состоит из нескольких этапов, на каждом из которых игроку предлагается выбрать один из вариантов ответа из нескольких предложенных. Правильный ответ приводит к продолжению игры и возможности выигрыша дополнительной суммы денег.

                 Уровни сложности вопросов: Вопросы обычно разбиты на несколько уровней сложности, и с каждым новым уровнем сумма выигрыша увеличивается. Однако, сложность вопросов также увеличивается, и неправильный ответ может привести к потере части или всех денег.

                 Подсказки и жокеры: Игрок может использовать различные подсказки и жокеры, такие как '50/50' (удаление двух неправильных вариантов ответа), 'Звонок другу' (консультация с другом), 'Помощь зала' (опрос зала).

                 Финальный вопрос: В конце игры игрок может столкнуться с финальным вопросом, на который он должен ответить, чтобы выиграть максимальную сумму денег.

                 Правила выбытия: Если игрок отвечает неправильно на вопрос, он может потерять все деньги или вернуться к предыдущему уровню выигрыша, в зависимости от правил игры.

                 Выигрыш: Если игрок успешно проходит все уровни и отвечает правильно на финальный вопрос, он выигрывает максимальную сумму денег.

""")
                .foregroundColor(Color.white)
            }
            .padding(.horizontal, 10)
            .padding(.top, 50)
        }
        .overlay(alignment: .topTrailing) {
            DismissBtn()
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    RulesView()
}
