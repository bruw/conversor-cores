package br.edu.utfpr.conversor_cores.model.domain;

import lombok.*;

import javax.persistence.*;

@Entity
@Table(name = "conversions")
@Data
@NoArgsConstructor
@RequiredArgsConstructor(access = AccessLevel.PUBLIC)
public class Conversion{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NonNull
    private String hexadecimal;

    @NonNull
    private String rgb;

    @ManyToOne
    private Color color;

}
