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

Here $\sigma$ are the [Pauli spin matrices](https://ocw.mit.edu/courses/5-61-physical-chemistry-fall-2007/3b1fb40c61e7f939861b190bedbc57a7_lecture24.pdf) the $i$ in $\sigma_i$ means that this operator only acts on TLS number $i$ .

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

# Deep strong coupling

In the notes on [Deep strong coupling](https://github.com/project-ida/notes/blob/main/pdf/Deep%20strong%20coupling.pdf), we described a regime in which all the terms in the Hamiltonian in Eq. $\ref{eq:dickeHpseudo}$ were of the same order. In other words:

$$
\Delta E \sim n\hbar\omega \sim U\sqrt{N}\sqrt{n}
\label{eq:deepstrongcoupling}
$$

where we have taken the conservative Dicke scaling of $\sqrt{N}$. This regime is characterised by a [superradiant phase transition](https://en.wikipedia.org/wiki/Dicke_model#Superradiant_transition_and_Dicke_superradiance).

For a given $\Delta E, \hbar\omega$, Eq. $\ref{eq:deepstrongcoupling}$ fixes the strength of the field $n$ and the number of TLS $N$. For nuclear transitions mediated by phonons via a relativistic phonon nuclear coupling, we found that we could **not** satisfy Eq. $\ref{eq:deepstrongcoupling}$.

Mathematically, the reason Eq. $\ref{eq:deepstrongcoupling}$ is hard to satisfy is because $n\hbar\omega \sim U\sqrt{N}\sqrt{n}$ limits how large $n$ can be because $n$ grows faster than $\sqrt{n}$.

What happens if we look for a regime in which $n$ is not constrained?

# Strong field

Let's imagine that the field is so strong, i.e. $n$ is so large, that the following is satisfied:

$$
\Delta E \lesssim U\sqrt{N}\sqrt{n} \ll n\hbar \omega
\label{eq:strongfield}
$$

In this regime, the field retains its "identity" but the TLS gets significantly altered by the field and the coupling. 

Eq. $\ref{eq:strongfield}$ can in principle be satisfied for any type of coupling by just increasing the field strength. In practice, there will be physical limits on how strong a field can be. Let's try and work through an example using relativistic phonon nuclear coupling to mediate a nuclear transition with phonons.

## Relativistic phonon nuclear coupling

From notes on [Coupling constants in nuclear physics](https://github.com/project-ida/notes/blob/main/pdf/Coupling%20constants%20in%20nuclear%20physics.pdf), we derived the relativistic phonon nuclear coupling as:

$$
\frac{U}{\hbar \omega_A} = \sqrt{\frac{2}{N}} \sqrt{\frac{\Delta E}{M c^2}} \sqrt{\frac{\Delta E}{\hbar \omega_A}} \times 10^{-3}
\label{eq:phononcoupling}
$$

where $N$ is the number of nuclei involved in the phonon motion, and $M$ is the mass of the nucleus and $\omega_A$ is the acoustic phonon mode frequency. The first condition in Eq. $\ref{eq:strongfield}$ gives:
$$
\begin{aligned}
\Delta E &\lesssim U\sqrt{N}\sqrt{n} \\
\frac{\Delta E}{\hbar \omega_A} &\lesssim \sqrt{2} \sqrt{\frac{\Delta E}{M c^2}} \sqrt{\frac{\Delta E}{\hbar \omega_A}} \times 10^{-3}\sqrt{n} \\
1 &\lesssim \sqrt{2} \sqrt{\frac{\hbar\omega_A}{M c^2}} \times 10^{-3}\sqrt{n} \\
\frac{1}{2}\frac{Mc^2}{\hbar\omega_A}\times 10^6 &\lesssim n \\
\frac{1}{2}Mc^2\times 10^6  &\lesssim n\hbar\omega_A
\end{aligned}
\label{eq:strongfieldconditiononn}
$$

For palladium nuclear transitions mediated by acoustic phonons, $M c^2 \approx 10^{11}$ eV  and $\hbar \omega_A \approx 10^{-8}$ eV  . This tells us that the number of phonons must be at least:

$$
n \gtrsim 5\times 10^{24}
$$

And the total energy of the phonons is at least:

$$
\frac{1}{2}\times 10^{11} \times 10^{6} \times 1.6\times 10^{-19} = 8 \, \rm mJ
\label{eq:minfieldenergy}
$$

This does not seem like an outrageous amount of energy.

The second condition in Eq. $\ref{eq:strongfield}$ gives:

$$
\begin{aligned}
U\sqrt{N}\sqrt{n} &\ll  n\hbar \omega_A \\
\sqrt{2} \sqrt{\frac{\Delta E}{M c^2}} \sqrt{\frac{\Delta E}{\hbar \omega_A}} \times 10^{-3}\sqrt{n} &\ll n \\
2\frac{\Delta E}{M c^2} \frac{\Delta E}{\hbar \omega_A} \times 10^{-6} \ll n
\end{aligned}
$$

For a $\rm 24 \ MeV$ palladium transition mediated by acoustic phonons we have:

$$
n \gg 10^{6}
$$
So, we can describe some different regions of $n$ for this palladium example:

-  $n<10^{6}$ - weak field, the coupling term is greater than the total field energy but is a lot less than the TLS energy. 
-  $10^6 < n < 5 \times 10^{24}$ - intermediate field, the field and the TLS dominate over the coupling.
- $n > 5\times 10^{24}$ - strong field, the field dominates but now the coupling is bigger than the TLS energy 

When the field is strong, and the field quanta have a low enough energy such that $U\sqrt{N}>\hbar\omega$ then there can be a free exchange of energy between the field and the TLS because even though an individual low energy energy quanta cannot "hold" all the energy of a TLS transition, the coupling term can.  Another way of thinking about this is that incredibly unlikely transitions like the downconversion of nuclear energy into phonon energy or the upconversion of phonon energy to nuclear energy become possible.

### Ion traps

Although the phonon energy doesn't seem that large - Eq. $\ref{eq:minfieldenergy}$ gave $8 \ \rm mJ$ - it can be a bit deceiving. For example, one might imagine giving $8 \ \rm mJ$ of energy to a single nucleus via the electric field of an ion trap such as a Paul trap like the one used in [Cai 2021](https://www.nature.com/articles/s41467-021-21425-8). Such a setup might allow us to explore relativistic phonon nuclear coupling of a single nucleus. However, we must consider both the physical limits on the size of the electric field that would drive the oscillatory motion and the size of the experiment over which acceleration of the nucleus occurs.

From notes on [Coupling constants in nuclear physics](https://github.com/project-ida/notes/blob/main/pdf/Coupling%20constants%20in%20nuclear%20physics.pdf), we derived the magnitude of an oscillating electric field associated with phonon motion to be:

$$
E = \frac{\omega_A \sqrt{2M n\hbar \omega_A}}{Ze \sqrt{N}} \label{eq:E}
$$

The electric field depends on the frequency and so in principle we can bring the field down to manageable levels. However, the smaller the field, the greater than size of the experiment because smaller field has to act over a greater distance in order to produce phonon energies required from Eq. $\ref{eq:strongfieldconditiononn}$.

A simple test of practicality is to substitute the largest practical $E$ field of $\sim 10^{11}$. It should be noted that this field is used for acceleration of charged particles and not for trapping of ions. It will however give us a good bound for how large a hypothetical trap might need to be.

For a single palladium nucleus with $Z \sim 50$, the size of the trap $d$ can be estimated from force multiplied by distance:

$$
\begin{aligned}
ZeEd &= 8\times 10^{-3} \\
d  &= \frac{8\times 10^{-3}}{ZeE} \\
d  &\sim \frac{5\times 10^{16}}{50 \times 10^{11}} \\
d &\sim 10^4 \ \rm m
\end{aligned}
$$

A monstrously large ion trap. 

A smaller electric field would only make the the situation worse and so we can conclude that the strong field regime cannot be accessed for a single nucleus in an ion trap.

In some ways this might not be so surprising because for a single nucleus, we're requiring $\frac{1}{2}Mc^2\times 10^6 \ \rm eV$ to be transferred to it - one million times more energy than it's rest mass energy!!!

One might hope to alleviate the problems described above by adding more nuclei to the trap and thus bringing down the energy per nucleus. However, in order to avoid collective non-neutral plasma effects coming into play we'd need to limit $N < 1000$. This would still make the trap $\sim 10 \ \rm m$ which is  orders of magnitude larger that typical trap sizes.




## Magnetic dipole coupling

From notes on [Coupling constants in nuclear physics](https://github.com/project-ida/notes/blob/main/pdf/Coupling%20constants%20in%20nuclear%20physics.pdf), we derived the magnetic dipole coupling as:
$$
U \approx 0.02 \frac{{\mu_N}B}{\sqrt{n}}
$$
where $\mu_N = e\hbar/m_p \approx 5\times 10^{-27} \ \rm J/T$ is the nuclear magneton

The first condition in Eq. $\ref{eq:strongfield}$ gives:
$$
\begin{aligned}
\Delta E &\lesssim U\sqrt{N}\sqrt{n} \\
{\Delta E} &\lesssim  0.02 \mu_N B \sqrt{N} \\
1 &\lesssim 0.02\sqrt{N}\frac{\mu_N B}{\Delta E} \\
\end{aligned}
$$
We can turn this into a condition for the number of nuclei $N$ by using the largest reasonable magnetic field strength of $B\sim 0.1 \ \rm T$. Let's look at the $\rm 14 \ keV$ nuclear transition of $\rm ^{57}Fe$ .
$$
\begin{aligned}
N &\gtrsim \left(50\frac{\Delta E}{\mu_N B}\right)^2 \\
&\gtrsim 2500 \times \left(\frac{14 \times 10^3 \times 1.6\times 10^{-19}}{5\times 10^{-27}\times 0.1}\right)^2
\\
&\gtrsim 5 \times 10^{28}
\end{aligned}
$$
This works out at about $5000 \ \rm kg$ of iron - at the very least!

The second condition in Eq. $\ref{eq:strongfield}$ gives:
$$
\begin{aligned}
U\sqrt{N}\sqrt{n} &\ll  n\hbar \omega \\
0.02 \mu_N B \sqrt{N} &\ll \frac{1}{\mu_0} B^2 V  \\
N \ll \left(50\frac{1}{\mu_0\mu_N}BV\right)^2
\end{aligned}
$$
Again we'll use $B=0.1 \ \rm T$ . For the volume let's use the volume of $5 \times 10^{28}$ iron atoms. The density of iron is about $8000 \ \rm kg/m^{-3}$ so $V \approx 0.6 \ \rm m^3$ . Substituting the numbers gives:
$$
N \ll 2\times 10^{65}
$$
This condition is well satisfied.

If we were to magnetic quanta with energy $4 \ \rm neV$ which have frequency $f \approx 1 \ \rm MHz$ and wavelength $\lambda \approx 300 \ \rm  m$  (which would define a coherence domain for the Dicke model) then we could in principle reach the strong field regime using magnetic coupling. It would be a LOT of iron of course and the solid would be very large too.
