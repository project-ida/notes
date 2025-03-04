---
author: "Matt Lilley"
---

# Introduction

Coupling refers to the interaction between two systems, where the total energy is not a simple sum of the energies of each system. Instead, the total energy also depends on the combined states of both, with each system influencing the other in ways that cannot be separated. We often express the ideas through a Lagrangian or Hamiltonian.

The aim of these notes is to build some intuition for a quantum systems that have extremely strong coupling. In the [quantum optics literature](https://www.nature.com/articles/s42254-018-0006-2), the use the terms:

- Weak
- Strong
- Ultra strong
- Deep strong

to describe the different regimes. 

We'll begin with a classical example and use the quantum optics language above. We choose the example of coupled pendulums because it turns out each quantum state with a well defined energy behaves like it's own pendulum (see e.g. [Briggs et.al](https://journals.aps.org/pra/abstract/10.1103/PhysRevA.85.052111)). 

# A Classical example

For example, consider two identical pendulums of length $l$ and mass $m$ connected by a spring whose stiffness is characterised by $k$. In the small angle approximation ($\theta_1, \theta_1 \ll 1$), the Hamiltonian is:

$$
H = \frac{m l^2}{2} \dot{\theta}_1^2 + \frac{m g l}{2} \theta_1^2 + \frac{m l^2}{2} \dot{\theta}_2^2 + \frac{m g l}{2} \theta_2^2 + \frac{1}{2} k l^2(\theta_1 - \theta_2)^2
$$

The first four terms are the simple sum of each individual pendulum. The third term arrises due to the coupling.

More abstractly, we can write:

$$
H = H_1 + H_2+ V_{\text{coupling}}
$$

and associate frequencies to the different parts:

- $\omega_1 = \sqrt{g/l}$
- $\omega_2 = \sqrt{g/l}$
- $\omega_{\rm coupling} = \sqrt{k/m}$

The system behaves quite differently depending on the strength of the coupling which is proportional to the different frequencies.

## Weak coupling

In reality, there is always dissipation which cannot be properly captured in a Hamiltonian description. We can however define a dissipation rate $\gamma_{\rm diss}$ whose magnitude also changes the system behaviour.

When $\omega_{\rm coupling} \ll \gamma_{\rm diss} \ll \omega_1,\omega_2$, the coupling is described as weak.

There are very small changes in the natural frequencies of the system as compared to the uncoupled case:

- $\omega_1 \rightarrow \omega_+ = \sqrt{g/l}$
- $\omega_2 \rightarrow \omega_- = \sqrt{g/l + 2k/m}$

The energy does not however move back and forwards between the pendulums because of the large dissipation.  

## Strong coupling

When the coupling is "strong" in the sense that $\gamma_{\rm diss} \ll \omega_{\rm coupling} \ll \omega_1,\omega_2$,  dissipation is small enough to allow energy to be slowly [exchanged between the two pendulums](https://www.youtube.com/watch?v=CjJVBvDNxcE&t=57s). The motion is characterised by individual swings happening with a frequency $\approx \sqrt{g/l}$ where the amplitude of those swings gradually undulates on a timescale characterised by $\omega_{\rm exchange} = k/2m\omega_p$. This exchange happens most effectively when the pendulums have the same length, so that their natural frequencies are the same .

Strong coupling allows us to still conceptually consider the pendulums as having well defined identities in the sense that they have their own natural frequencies. As the coupling becomes larger, this is no longer the case.

## Ultra strong coupling

When the coupling is "ultra strong" in the sense that $\gamma_{\rm diss} \ll \omega_{\rm coupling} \sim 0.1\times  \omega_1,\omega_2$, energy exchange happens on the time scale of a single swing of one of the pendulums.  The two natural natural frequencies can be noticeably discerned, $\omega_+ = \sqrt{g/l}$  when both pendulums move "in phase" (the spring is not stretched) with one another and $\omega_- = \sqrt{g/l + 2k/m}$ when the pendulums move "out of phase".

The coupling is getting strong enough so that more energy can be exchanged between pendulums of different lengths.

This exact boundary for this regime is somewhat artificial - there is nothing particularly special about the value $0.1 \omega_{\rm 1}, \omega_2$. This value was first used as part of the quantum optics literature.

## Deep strong coupling

When $\gamma_{\rm diss} \ll \omega_1,\omega_2 \lesssim \omega_{\rm coupling}$ , the coupling begins to dominate over everything else and we enter into a regime called "Deep strong coupling".  Energy transfer between the two pendulums is so fast that it's almost instantaneous and so it's not possible to move one pendulum without the other - they act as a single rigid body.

# A quantum example

A canonical quantum example is a single two level system (TLS) interacting with a quantised field. The Hamiltonian can be written as:

$$
H = \frac{\Delta E}{2} \sigma_z + \hbar\omega\left(b^{\dagger}b +\frac{1}{2}\right) + U\left( b^{\dagger} + b \right)\sigma_x
\label{eq:H}
$$

where $\Delta E$ is the transition energy between the 2 levels of the TLS, $\hbar\omega$ is the energy of each quantum of the field, and $U$ is the coupling constant between the TLS and the field. The $\sigma$ operators are the Pauli matrices and $b^{\dagger}$, $b$ are the field creation and annihilation operators respectively.

Although a TLS has just 2 states (denoted $|\pm\rangle$), the quantised field has infinitely many states (denoted by the number of quanta $|n\rangle$). The combined state of the system (denoted $|n, \pm\rangle$) therefore has infinitely many states and so conceptually the system behaves like infinitely many pendulums coupled together. The frequency of these conceptual pendulums is determined by the energy of the states.

Much like the classical example, the dynamics depend on the relative sizes of the different terms in the Hamiltonian. For the quantum case however, it's not enough just to compare the various constants $U, \hbar \omega, \Delta E$, we must also consider how many field quanta $n$ we have. This is because of how the field operators work:

$$
b^{\dagger} |n,\pm\rangle = \sqrt{n+1}|n+1,\pm\rangle \\
$$

$$
b^{} |n,\pm\rangle = \sqrt{n}|n-1,\pm\rangle \\
$$

$$
b^{\dagger}b |n,\pm\rangle = n|n,\pm\rangle
$$

The more field quanta we have, the larger the field and coupling terms will be compared to the TLS term.

## Weak coupling

Much like the classical pendulums, the quantum states can suffer various forms of "dissipation". As the quantum systems interacts with outside systems, it can cause:

- Dephasing - where the phase relationship between each of the quantum states starts to change over time
- Decoherence - the system is forced out of a superposition state and into a well defined state aka "collapse of the wavefunciton"

If we define $\hbar\gamma_{\rm diss}$  as a characteristic energy associated with the above processes, then $\sqrt{n}U \ll \hbar \gamma_{\rm diss} \ll \Delta E , n\hbar \omega$ defines the weak coupling regime. Spontaneous emission is the most characteristic feature of weak coupling where an excited TLS with less field quanta (e.g. $|n,+\rangle$) is coupled to a ground state TLS with more field quanta (e.g. $|n+1,-\rangle$ ). The coupling is however not so strong that the field quanta can get reabsorbed.

> Note that truly irreversible spontaneous emission also relies on there being a continuum of states instead of discrete ones.

## Strong coupling

As in the classical case, when the coupling is strong in the sense that $\hbar\gamma_{\rm diss} \ll \sqrt{n}U \ll \Delta E , \hbar \omega$, there is time for slow exchange between the different quantum states (remember each state is like it's own pendulum).  Unlike the classical case, where it's energy that's exchanged, in the quantum case it's state occupation probability $|\psi|^2$ that's exchanged. 

In order for exchange to occur effectively, the quantum states need to have the same energy. This is equivalent to the conceptual pendulums having the same length. Two such states are often described as "resonant" with one another. Whether or not the system has any resonances depends on the relationship between $\hbar \omega$ and $\Delta E$.

### Matched field and TLS

When the field is matched to the TLS, $\Delta E = \hbar\omega$. This is the most widely discussed regime in which a transition of the TLS (often an atomic transition) results in the emission of a single field quantum (often a photon). In a cavity where discrete states can be arranged and field quanta can be confined, this results in occupation probability oscillating between states like $|n,+\rangle$ and  $|n+1,-\rangle$. These oscillations are called [Rabi oscillations](https://en.wikipedia.org/wiki/Jaynes%E2%80%93Cummings_model#Vacuum_Rabi_oscillations) which have a frequency $\Omega/\hbar\omega \sim \sqrt{n}U/\hbar\omega$

### Mismatched field and TLS

When the field is mismatched to the TLS, $\Delta E \neq \hbar\omega$ . If the mismatch is arbitrary, e.g. $\Delta E/ \hbar\omega = 2.83677$ then Rabi oscillations cannot occur because the coupling term ($\sim \sqrt{n}U$) is still very small compared to $\Delta E$ and $\hbar\omega$ and so it cannot accommodate any energy mismatch.

If however, $\Delta E = m\hbar \omega$ where $m=3, 5, 7 ...$ then  $|n,+\rangle$ is resonant with,  $|n+3,-\rangle$, $|n+5,-\rangle$, $|n+7,-\rangle ...$  and so Rabi oscillations can once again occur. The frequency is slower $\Omega/\hbar\omega \sim (\sqrt{n}U/\hbar\omega)^m$ and so for larger $m$ the emission of multiple quanta becomes less and less likely.

## Ultra strong coupling

When the coupling becomes a sizeable fraction of the TLS and field quantum, $\hbar\gamma_{\rm diss} \ll \sqrt{n}U \sim 0.1 \times \Delta E , \hbar \omega$, non-resonant states begin to gain significant occupancy. For example, a system can start out in state $|0,+\rangle$ with 100% probability and overtime a state $|1,+\rangle$ can gain a non-trivial amount of occupation probability. Although this superficially appears to violate energy conservation, the energy in the coupling is no longer small and so all terms in the Hamiltonian need to be considered when thinking about energy conservation.

The coupling term can also accommodate energy mismatches between the TLS and the oscillator, e.g. $\Delta E/ \hbar\omega = 2.83677$ vs $\Delta E/ \hbar\omega = 3$. This makes it easier to observe the emission of multiple quanta.

## Deep strong coupling

When the coupling becomes on the same order or greater than the TLS and field quantum $\hbar\gamma_{\rm diss} \ll \Delta E , \hbar \omega \lesssim \sqrt{n}U$, then TLS transitions and creation/annihilation of field quanta can no longer be understood by simply thinking about the TLS and field exchanging energy with each other and the coupling as a kind of glue between the two. The coupling term has an "identity" all of its own.

This regime was first theoretically explored in [2010 by C/asanova at.al](https://journals.aps.org/prl/abstract/10.1103/PhysRevLett.105.263603) where a simpler definition of "deep strong coupling" was given as:

$$
\frac{U}{\hbar\omega} \gtrsim 1
\label{eq:deepstrongcoupling}
$$

Indeed, if their condition is satisfied then $\hbar \omega \lesssim \sqrt{n}U$ is guaranteed.

Let's first consider the case (as Casanova did) that the TLS energy is small in the sense that  $\Delta E < \hbar \omega$. If the coupling is in the deep storing regime so that $U/\hbar\omega \gtrsim 1$ then, from an energy conservation point of view, the coupling term can spontaneously create field quanta. When a quanta gets created, then $n$ increases which means the coupling term $\sim \sqrt{n}U$ increases which means more quanta can be made. We can figure out how many can be made by equating the field energy to the coupling energy in the Hamiltonian:

$$
n\hbar\omega \sim \sqrt{n}U
\label{eq:couplingbalancefield}
$$

This gives us:

$$
n \sim \left(\frac{U}{\hbar\omega}\right)^2
\label{eq:selfconsistentn}
$$

When you work out the detailed maths, you end up with $n = 4(U/\hbar\omega)^2$. 

When the TLS energy is not small ($\Delta E \gtrsim \hbar \omega$) then there is an additional energy equivalence to consider:

$$
\Delta E \sim \sqrt{n}U
\label{eq:couplingbalancetls}
$$

Eq. $\ref{eq:couplingbalancefield}$ and Eq. $\ref{eq:couplingbalancetls}$ can be solved simultaneously to eliminate $n$. This gives us a relationship between $U,\Delta E,\hbar\omega$:

$$
\Delta E \sim \sqrt{\left(\frac{U}{\hbar\omega}\right)^2}U \\

\Delta E \sim \frac{U^2}{\hbar\omega} \\
\Delta E\sim \frac{U^2}{\hbar\omega} \\
U \sim \sqrt{\Delta E \hbar\omega} \\
\frac{U}{\hbar\omega} \sim \sqrt{\frac{\Delta E}{\hbar\omega}}
\label{eq:uconstraint}
$$
For the case when the TLS energy dominates over the field, $\Delta E \gg \hbar \omega$, Eq. $\ref{eq:uconstraint}$ is a more appropriate coupling threshold to consider than Eq. $\ref{eq:deepstrongcoupling}$. This regime is sometimes called "dispersive deep strong coupling" as was first coined by [Felicetti et.al in 2017](https://journals.aps.org/pra/abstract/10.1103/PhysRevA.95.013827). Again, when you do the detailed maths, you get an extra constant so that:

$$
\frac{U}{\hbar\omega} \gtrsim \frac{1}{2}\sqrt{\frac{\Delta E}{\hbar\omega}}
\label{eq:superradianttransition}
$$

In the extreme case when $\Delta E/\hbar\omega \rightarrow \infty$ then Eq. $\ref{eq:superradianttransition}$ represents a boundary of what's called a superradiant phase transition (detailed in [2015 by Hwang et.al](https://journals.aps.org/prl/abstract/10.1103/PhysRevLett.115.180404)). When you go above this critical coupling, the system undergoes a phase change where the lowest energy state is not with zero field quanta but a finite number of them.

### Relativistic phonon nuclear coupling

For acoustic phonons, we choose a notation $\omega \equiv \omega_A$. From notes on `Coupling constants in nuclear physics`, we derived:

$$
\frac{U}{\hbar \omega_A} = \sqrt{\frac{2}{N}} \sqrt{\frac{\Delta E}{M c^2}} \sqrt{\frac{\Delta E}{\hbar \omega_A}} \times 10^{-3}
\label{eq:phononcoupling}
$$

where $N$ is the number of nuclei involved in the phonon motion, and $M$ is the mass of the nucleus.

Typically, we imagine a phonon as being the quantised oscillatory motion of many nuclei in a lattice. However, it's possible to arrange systems in which the motion of an isolated nucleus is considered (see e.g. [Cat et.al 2021](https://www.nature.com/articles/s41467-021-21425-8)) - in which case $N=1$.

Our example Hamiltonian in Eq. $\ref{eq:H}$ is for a single TLS, so we'll consider Eq. $\ref{eq:phononcoupling}$ with $N=1$. We'll extend the Hamiltonian to many TLS later on.

Substituting the expression for coupling (Eq. $\ref{eq:phononcoupling}$) into the critical coupling expression (Eq. $\ref{eq:criticalcoupling}$) gives the following condition:

$$
\sqrt{2} \sqrt{\frac{\Delta E}{M c^2}}  \times 10^{-3} \ge 1
$$

