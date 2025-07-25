---
author: "Matt Lilley"
---

# Introduction

The purpose of this document is to describe the Dicke model.

# Rabi model

Before we can talk about the Dicke model, we must first familiarise ourselves with a single two level system (TLS) interacting with a single mode (i.e. single frequency/wavelength) of a quantised field. This is often called the Rabi model and its Hamiltonian can be written as:

$$
H_{\rm Rabi} = \frac{\Delta E}{2} \sigma_z + \hbar\omega\left(a^{\dagger}a +\frac{1}{2}\right) + U\left( a^{\dagger} + a \right)(\sigma_+ + \sigma_-)
\label{eq:rabiH}
$$

where $\Delta E$ is the transition energy between the 2 levels of the TLS, $\hbar\omega$ is the energy of each quantum of the field, and $U$ is the coupling constant between the TLS and the field. The $\sigma$ operators are the [Pauli spin matrices](https://ocw.mit.edu/courses/5-61-physical-chemistry-fall-2007/3b1fb40c61e7f939861b190bedbc57a7_lecture24.pdf) that act on the TLS, where $\sigma_+$ and $\sigma_-$ act as raising and lowering operators. The $a^{\dagger}$, $a$ are the field creation and annihilation operators respectively.

It's worth noting that we're using the Pauli spin matrices as a mathematical tool to describe two levels. Just keep in mind that we're not really talking about spin angular momentum here.

The TLS has just 2 states denoted by  $|\pm\rangle$ but the quantised field has infinitely many states denoted by the number of quanta $|n\rangle$. The combined state of the system can therefore be represented by $|n, \pm\rangle$. Each quantum state can be conceptually thought of as a pendulum whose frequency is related to the energy of the state (see e.g. [Briggs et.al](https://journals.aps.org/pra/abstract/10.1103/PhysRevA.85.052111)).

The strength of the interaction between the TLS and the field is not only determined by the constant $U$ but also how many field quanta $n$ we have. This is because of how the field operators work:

$$
a^{\dagger} |n,\pm\rangle = \sqrt{n+1}|n+1,\pm\rangle
\label{eq:fieldcreate}
$$

$$
a |n,\pm\rangle = \sqrt{n}|n-1,\pm\rangle \\
\label{eq:fielddestroy}
$$

$$
a^{\dagger}a |n,\pm\rangle = n|n,\pm\rangle
$$

The more field quanta we have (the stronger the field), the larger the coupling terms will be. 

# Dicke model

The Dicke model describes a system where we have $N$ identical TLS coupled to a single mode (i.e. single frequency/wavelength) of a quantised field. The Dicke Hamiltonians is a simple extension of the Rabi Hamiltonian in Eq. $\ref{eq:rabiH}$ in the sense that we just add $N$ copies of the TLS terms as seen below:

$$
H_{\text{Dicke}} = \frac{\Delta E}{2} \sum_{i=1}^N \sigma_z^{(i)} +  \hbar\omega\left(a^{\dagger}a +\frac{1}{2}\right) + U \sum_{i=1}^N (a^\dagger + a) (\sigma_+^{(i)} + \sigma_-^{(i)})
\label{eq:dickeH}
$$

The states of this system are described by $|n, \pm, \pm, \pm, \pm, ... \rangle$.

It's worth emphasising that there is no spatial dependence of the field in Eq. $\ref{eq:dickeH}$. One way to understand this physically is that all the TLS are very close together in the sense that they are located in a region of space that is much smaller than the wavelength of the mode.  In that situation, all the TLS will experience the same strength of field at any given moment - in other words the field appears constant in space. This is the how Dicke originally presented his ideas in [his 1954 paper](https://journals.aps.org/pr/abstract/10.1103/PhysRev.93.99). It's also possible to use this Hamiltonian to describe many TLS arranged in a very special way so that they are placed at integer multiples of the mode wavelength.

Much like how the strength of the field changes the size of the coupling term in the Rabi model (and also in the Dicke model), the number of TLS also has an effect - this is the origin of what's called Dicke superradiance. It is however difficult to see this right now because Eq. $\ref{eq:dickeH}$ is not written in a convenient form. We're going to need to rewrite it by appealing to the physics of spin.

## Pseudo-spin

We noted earlier that the use of the Pauli spin matrices is just a mathematical tool to describe two levels. Although we're not describing spin here, we are working with what is often called "pseudo spin". The [rules of angular momentum](https://en.wikipedia.org/wiki/Angular_momentum_operator) work just as well for pseudo angular momentum. In particular, the rules of [angular momentum addition](https://www.tcm.phy.cam.ac.uk/~bds10/aqp/lec7_compressed.pdf) and conservation.

This means that we can treat all the TLS together as if they are a single object with many levels whose energies are determined by the addition rules of pseudo angular momentum. The Hamilton then looks like:

$$
H =  \Delta E J_{z} + \hbar\omega\left(a^{\dagger}a +\frac{1}{2}\right) + 2U\left( a^{\dagger} + a \right)(J_{+} + J_{-})
\label{eq:dickeHpseudo}
$$

where the total pseudo total angular momentum operators ($J$) for $N$ TLS are:

$$
J_{+} + J_{-} = J_{x} = \frac{1}{2}\overset{N}{\underset{i=1}{\Sigma}} \sigma_{i x} \,\,\,\,\,\, J_{z} = \frac{1}{2}\overset{N}{\underset{i=1}{\Sigma}} \sigma_{i z}
$$

and noting that $i$ in $\sigma_i$ means that this operator only acts on TLS number $i$ .

When written in this way, states can now be described in terms of 3 numbers $|n, j, m\rangle$ where $j$ describes the total pseudo angular momentum number (which is conserved) and $m$ describes the z component of the total pseudo angular momentum (which can change). This notation allows us to conveniently describe situations where excitations are "delocalised" among the TLS. A delocalised excitation means that the excitation is shared among many TLS in such a way that you don't know which TLS holds the excitation at any moment.

By far the most significant kind of delocalised states are called "Dicke states" which have the largest $j=j_{\max} = N/2$. Dicke states are symmetric in the sense that if you swap any of the TLS around, the state remains unchanged. For example, consider a single excitation among 4 TLS - the Dicke state looks like:

$$
\Psi = \frac{1}{\sqrt{4}}\left(| n, +, -, -, - \rangle + | n, -, +, -, - \rangle + | n, -, -, +, - \rangle + | n, -, -, -, + \rangle \right)
$$

Notice that if you swap any two TLS, the state looks the same.

The above state can instead be described by $j_{\max}= 4/2  = 2$ and $m = 1\times 1/2 + 3\times -1/2 =-1$

$$
\Psi = |n,2,-1>
$$

In this way of describing the system, the [ladder operators](https://en.wikipedia.org/wiki/Ladder_operator#Angular_momentum) $J_{+}$ and $J_{-}$ create and destroy delocalised excitations of the combined TLS. This causes a raising and lowering of the $m$ value like this:

$$
J_+ |n, j, m\rangle  =  \sqrt{j(j + 1) - m(m + 1)} |n, j, m + 1\rangle
$$

$$
J_- |n, j, m\rangle =  \sqrt{j(j + 1) - m(m - 1)} |n, j, m - 1\rangle
$$

These ladder operators are conceptually similar to the creation and annihilation operators of the field (see Eqs. $\ref{eq:fieldcreate}$ and $\ref{eq:fielddestroy}$). The details are however more complicated due to the addition rules of angular momentum. Despite the complexity, we know that the maximum total angular momentum $j_{\max} = N/2$ (from $N$ TLS with pseudo angular momentum $1/2$). We can therefore see that the number of TLS is going to have an effect on the coupling between TLS and field. Exactly what effect depends on the details. Let's explore some of those details next.

## Superradiance

Dicke states with $j=j_{\max}$ are significant because of the acceleration properties that they offer; something people often describe as superradiance. 

Let's operate using $J_-$ on some states. This represents a single de-excitation of the combined TLS.

For the case with **all TLS excited** , $m=N/2$:

$$
J_- |n, N/2, N/2\rangle  = \sqrt{N} |n, N/2, N/2 - 1\rangle
$$

This means that for the first de-excitation, the coupling terms gets enhanced by $\sqrt{N}$ . This might not seem surprising at first glance because we have $N$ TLS excited and so we should expect the rate of emission (which go as the square of the coupling) to be enhanced by $N$.

For the case of **a single excitation** , $m=-N/2 + 1$:

$$
J_- |n, N/2, -N/2 +1\rangle  = \sqrt{N}|n, N/2, -N/2\rangle
$$

For this singe de-excitation the coupling term also gets enhanced by  $\sqrt{N}$ . This is more surprising because the rate of emission  (which go as the square of the coupling) to be enhanced by $N$ even though there is only a single excitation.

For the case of **50% excitation**, $m=0$:

$$
J_- |n, N/2, 0 \rangle  = \frac{1}{2}\sqrt{N^2 + 2N}|n, N/2, -1\rangle
$$

For the first de-excitation, the coupling terms gets enhanced by  $\sim\sqrt{N^2}$ for large $N$. In other words, the rate of emission  (which go as the square of the coupling) to be enhanced by $N^2$  - this is where the super in superradiance comes from.

### Understanding superradiance

Superradiance might at first seem counterintuitive, but we can understand it from one of the most fundamental principles of quantum mechanics [according to Richard Feynman](https://www.feynmanlectures.caltech.edu/III_01.html#Ch1-S7) which reads:


> "When an event can occur in several alternative ways, the probability amplitude for the event is the sum of the probability amplitudes for each way considered separately. There is interference"

Let's take the example of 2 excitations amongst 4 TLS. The initial delocalised Dicke state looks like:

$$
\Psi_i = \frac{1}{\sqrt{6}}\left(| 0, +, +, -, - \rangle + | 0, +, -, +, - \rangle + | 0, +, -, -, + \rangle + | 0, -, +, +, - \rangle + | 0, -, +, -, + \rangle + | 0, -, -, +, + \rangle \right)
$$

We can see there are 6 different configurations for the TLS. Each of the 2 excitations in those 6 configurations could transition from $+$ to a $-$ with a release of a single field quanta. That means each of the 6 configurations has 2 emission paths that it could go in order to reach one of 4 configurations in final the state:

$$
\Psi_f = \frac{1}{\sqrt{4}}\left(| 1, +, -, -, - \rangle + | 1, -, +, -, - \rangle + | 1, -, -, +, - \rangle + | 1, -, -, -, + \rangle \right)
$$

The total number of emission paths is therefore $6\times 2 = 12$. Each of these paths contributes the same to the overall emission amplitude because the Dicke state is constructed with $+$ between each of the configurations that make up the state. This creates what's called "constructive interference" where the effects of each path add up to a larger effect. 

To get the numbers right, we must remember that our states are normalised. The 6 configurations in our starting state means dividing the amplitude by $\sqrt{6}$. The 4 configurations in the final state means dividing the amplitude by $\sqrt{4}$. So the overall amplitude enhancement factor is:

$$
\frac{6\times 2}{\sqrt{6}\sqrt{4}} = \sqrt{6}
$$

and so the probability enhancement factor (which is proportional to the emission rate) is the square of this, i.e. 6. To derive a general formula, we just have to do this counting and normalising for the general case:

$$
\left(\frac{^N C_{N_+} N_+}{\sqrt{^N C_{N_+}}\sqrt{^N C_{{N_+}-1}}}\right)^2 = N_+\left(N-N_++1\right)
$$

where $N_+$ is the number of excitations amongst the $N$ TLS.

Now we can really understand just how important those "$+$'s" are that make the Dicke state symmetric. As soon as you allow any "$-$" you reduce the emission rates. Take for example the case of 2 TLS with a single delocalised excitation. If instead of a symmetric Dicke state
$$
\Psi = \frac{1}{\sqrt{2}}\left(| 0, +, -\rangle + | 0, -, + \rangle \right)
$$

we instead use 

$$
\Psi = \frac{1}{\sqrt{2}}\left(| 0, +, -\rangle - | 0, -, + \rangle \right)
$$

then we get no emission at all because we get complete destructive interference of the two paths. Such states are often referred to as "dark states".

### Limitations of superradiance

The biggest limitation associated with superradiance is the requirement for many TLS to be in a space much smaller than a wavelength so that all TLS see the same field at any moment in time. This is another way of saying that we have to make sure we can indeed use the Dicke Hamiltonian in Eq. $\ref{eq:dickeH}$ to describe the system.

Consider for example the acceleration of the decay of the $\rm 14\ keV$ transition of excited $\rm ^{57}Fe$ as described in [Chumakov 2017](https://www.nature.com/articles/s41567-017-0001-z). There, a $\rm 14\ keV$ x-ray laser is responsible for exciting the $\rm ^{57}Fe$ initially. In such an experiment, it's possible to create a Dicke state with an extremely large $N$ proportional to the spot size of the laser. In the case of iron with a surface density on the order of $10^{15} \ \rm m^{-2}$ with an x-ray spot size of $1 \ \rm \mu m$ there are $N=10^7$ atoms.

While we might delight in the prospect of a $10^{7}$ enhancement of the decay rate, we must also consider the wavelength of the mode that the atoms are eventually going to collectively emit into. The wavelength associated with $\rm 14\ keV$ is only about $\sim 1\AA$. Since the number density of iron is about $8\times 10^{28} \rm m^{-3}$ then we'd have less than 1 atom per cubic wavelength and so we'd not be able to apply the Dicke Hamiltonian. Although all $10^{7}$ atoms see the same initial $\rm 14\ keV$ exciting x-ray beam, because the collective emission happens over distances spanning many wavelengths then there is potential for interference which can destroy the superradiance effects. Indeed in the Chumakov paper, they only observed a factor of 10 increase in the decay rate.

One way to overcome the limitation described above is to use a mode with a lower frequency and so a longer wavelength. There is however a price to pay for this approach. If the field and TLS are not matched, i.e. $\hbar\omega \neq \Delta E$ , then virtual transitions must take place in which quanta after quanta are "emitted" until there are enough field quanta $n$ so that energy balance is reached i.e. $n\hbar\omega = \Delta E$. This is known as downconversion. The rate of this process scales at most as fast as $(nN^2U^2)^{\Delta E / \hbar\omega}$ and so the only way this process can work is if there are enough TLS ($N$) and the field is initially strong enough ($n$) to make the overall coupling large.

Alternatively if we have two groups of TLS, system A and system B and they are energy matched in the sense that $\Delta E_A = \Delta E_B$ then a mismatched field can be used to increase the rate of excitation transfer between A and B without the constraints described above because the field does not have to be "responsible" for the energy balance in the final state. We'll explore this more in the next section.

## Supertransfer

> TODO 
