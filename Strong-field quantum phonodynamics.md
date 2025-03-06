---
author: "Matt Lilley"
---

# Introduction

I had a chat with my friend Chris Ridgers about his work on laser plasma interactions in a regime described as "Strong-field QED". The laser field is so intense that perturbation theory no longer works. Chris remarked on how part of the work involved using the "low" energy laser photons to cause an electron to emit a photon with many orders or magnitude more energy. Superficially this sounded similar to the phonon-nuclear system in which we use a low energy phonon to mediate a nuclear energy transition. We also have a highly excited phonon field that makes the system non-perturbative. Chris described various mathematical tools used in his work and I wondered whether we might be able to use some of them in our work.

In this document, I'll try and describe a regime that we might call "Strong-field quantum phonodynamics" or "Strong-field QPD" and compare/contrast it with what people sometimes refer to as "Deep strong coupling".

Unlike "Strong-field QED" that has as well defined parameter range given in terms of the "normalised vector potential" $a_0\equiv eE/m_e\omega c\gg 1$, for "Strong field QPD" I've not yet come up with a single parameter. Let's see whether one comes out of the analysis in this document.

# Dicke model

*For more detail on the Dicke model, see the [notes](https://github.com/project-ida/notes/blob/main/pdf/Dicke%20model.pdf) I made on the subject.*

## Describing the states

The Dicke model describes a system where we have $N$ identical TLS coupled to a single mode (i.e. single frequency/wavelength) of a quantised field. The Dicke Hamiltonians can be written as:

$$
H =  \Delta E J_{z} + \hbar\omega\left(a^{\dagger}a +\frac{1}{2}\right) + 2U\left( a^{\dagger} + a \right)(J_{+} + J_{-})
\label{eq:dickeHpseudo}
$$

where $\Delta E$ is the transition energy between the 2 levels of the TLS, $\hbar\omega$ is the energy of each quantum of the field, and $U$ is the coupling constant between the TLS and the field. The $a^{\dagger}$, $a$ are the field creation and annihilation operators respectively and the $J$ operators are total pseudo angular momentum operators:

$$
J_{+} + J_{-} = J_{x} = \frac{1}{2}\overset{N}{\underset{i=1}{\Sigma}} \sigma_{i x} \,\,\,\,\,\, J_{z} = \frac{1}{2}\overset{N}{\underset{i=1}{\Sigma}} \sigma_{i z}
$$

Here $\sigma$ are the Pauli spin matrices the $i$ in $\sigma_i$ means that this operator only acts on TLS number $i$ .

When written in this way, states are described in terms of 3 numbers $|n, j, m\rangle$ where $n$ describes the number of field quanta, $j$ describes the total pseudo angular momentum number (which is conserved) and $m$ describes the z component of the total pseudo angular momentum (which can change). This notation allows us to conveniently describe situations where excitations are "delocalised" among the TLS. By far the most significant kind of delocalised states are called  "Dicke states" which have the largest $j=j_{\max} = N/2$. These states are capable of accelerated emission rates due to superradiance. Dicke starts are symmetric in the sense that if you swap any of the TLS around, the state remains unchanged. For example, consider a single excitation in 4 TLS - the Dicke state written in $|n,\pm,\pm, \pm, \pm\rangle$ notation looks like:

$$
\Psi = \frac{1}{\sqrt{4}}\left(| n, +, -, -, - \rangle + | n, -, +, -, - \rangle + | n, -, -, +, - \rangle + | n, -, -, -, + \rangle \right)
$$

Notice that if you swap any two TLS, the state looks the same.

The above state can instead be described by $j_{\max}= 4/2  = 2$ and $m = 1\times 1/2 + 3\times -1/2 =-1$

$$
\Psi = |n,2,-1>
$$

## Coupling strength

The strength of the interaction between the TLS and the field is not only determined by the constant $U$ but also how many field quanta $n$ we have. This is because of how the field operators work:

$$
a^{\dagger} |n,j,m\rangle = \sqrt{n+1}|n+1,j,m\rangle
\label{eq:fieldcreate}
$$

$$
a |n,j,m\rangle = \sqrt{n}|n-1,j,m\rangle \\
\label{eq:fielddestroy}
$$

$$
a^{\dagger}a |n,j,m\rangle = n|n,j,m\rangle
$$

The more field quanta we have (the stronger the field), the larger the coupling terms will be compared to the TLS term which remains unchanged. 

The coupling is also affected by the number of TLS we have. This is because of how the the [ladder operators](https://en.wikipedia.org/wiki/Ladder_operator#Angular_momentum) $J_{+}$ and $J_{-}$ create and destroy excitations of the TLS. This causes a raising and lowering of the $m$ value like this:

$$
J_+ |n, j, m\rangle  =  \sqrt{j(j + 1) - m(m + 1)} |n, j, m + 1\rangle
$$

$$
J_- |n, j, m\rangle =  \sqrt{j(j + 1) - m(m - 1)} |n, j, m - 1\rangle
$$

These ladder operators are conceptually similar to the creation and annihilation operators of the field (see Eqs. $\ref{eq:fieldcreate}$ and $\ref{eq:fielddestroy}$). The details are however more complicated due to the addition rules of angular momentum. Despite the complexity, we know that the maximum total angular momentum $j_{\max} = N/2$ (from $N$ TLS with pseudo angular momentum $1/2$). We can therefore see that the number of TLS is going to have an effect on the coupling between TLS and field.  The effect scales like at least $\sqrt{N}$ and at most $N$ (see [Dicke model notes](https://github.com/project-ida/notes/blob/main/pdf/Dicke%20model.pdf) for more detail).

The coupling term in Eq. $\ref{eq:dickeHpseudo}$ therefore conservatively scales like $U\sqrt{N}\sqrt{n}$ and optimistically as $UN\sqrt{n}$.







