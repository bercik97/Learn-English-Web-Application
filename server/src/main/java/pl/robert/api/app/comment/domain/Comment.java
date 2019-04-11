package pl.robert.api.app.comment.domain;

import lombok.*;
import lombok.experimental.FieldDefaults;
import pl.robert.api.app.post.domain.Post;
import pl.robert.api.app.user.domain.User;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "comments")
@Builder
@Getter @Setter
@NoArgsConstructor
@AllArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE)
class Comment {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    long id;

    @ManyToOne(targetEntity = Post.class, fetch = FetchType.EAGER)
    @JoinColumn(nullable = false, name = "post_id")
    Post post;

    @ManyToOne(targetEntity = User.class, fetch = FetchType.EAGER)
    @JoinColumn(nullable = false, name = "user_id")
    User user;

    @Column(nullable = false)
    String text;

    @Column(nullable = false)
    LocalDateTime date;
}