package br.edu.utfpr.conversor_cores.model.domain;

import lombok.*;

import javax.persistence.*;

@Entity
@Table(name = "colors")
@Data
@NoArgsConstructor
@RequiredArgsConstructor(access = AccessLevel.PUBLIC)
public class Color {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NonNull
    private String name;

    @Column(unique = true)
    @NonNull
    private String hexadecimal;

}
