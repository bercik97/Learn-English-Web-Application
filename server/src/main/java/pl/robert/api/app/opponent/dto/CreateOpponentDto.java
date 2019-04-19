package pl.robert.api.app.opponent.dto;

import lombok.*;
import lombok.experimental.FieldDefaults;
import pl.robert.api.app.user.domain.User;

@Getter @Setter
@NoArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE)
@AllArgsConstructor
public class CreateOpponentDto {

    String myAnswers;
    String answerStatus;
    User user;

    public CreateOpponentDto(User user) {
        this.user = user;
    }
}
