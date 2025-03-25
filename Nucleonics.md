---
author: "Matt Lilley"
---

# What is nucleonics?

>  **Nucleonics is a scientific and engineering discipline that studies and applies the principles of physics to design, create, and operate devices that manipulate nucleons.**

We take inspiration from the emergence of electronics that marked a fundamental shift in humanity’s relationship to information. Underlying that shift was a revolution in the way we understood and interacted with electrons: rather than continuing to blow large aggregates of electrons through vacuum tubes, the transistor represented deliberate, precise control of electronic states.

What if, similar to our control of electronic states, we gained precise control of nuclear states? Before we can answer that question, it's essential to first ask the "Is it possible?" question.

Some of the essential physics of nucleonics (e.g. nuclear superradiance) was already proposed in [1965 by Terhune and Baldwin](https://doi.org/10.1103/physrevlett.14.589), but it's only in recent years that it's been possible to verify those ideas - see [Chumakov et.al 2017](https://www.nature.com/articles/s41567-017-0001-z). We're now seeing increased interest and experimental progress in the controlling of nuclear states e.g.  [Bocklage et.al 2021](https://www.science.org/doi/10.1126/sciadv.abc3991) , [Heeg et.al 2021](https://www.nature.com/articles/s41586-021-03276-x), and [Chai et.al 2025](https://www.nature.com/articles/s41567-024-02773-w). 

The answer seems to be yes - nucleonics is possible. Now to the question of "What if?".

# A vision for nucleonics

What if, similar to our control of electronic states, we gained precise control of nuclear states? We might imagine a world where [nuclear radiation is a thing of the past](https://nucleonics.substack.com/p/going-beyond-radiation) or a world where we can increase nuclear fusion rates in solid states to technologically relevant levels. 

There are other possible visions for nucleonics, e.g. one might take an information technology angle relating to nuclear spintronics. However, our vision takes an energy angle. We can recast the vision into a "mission statement"

> **We want to enable rational engineering of small-scale devices fuelled by clean nuclear energy**

Now that we have a "destination", how are we going to get there? Are there any potential roadblocks along the way? We need a roadmap.

# Nucleonics Roadmap

To meet the vision, we need nucleonics to be more than possible, we need it to be practical and so the essential question that a nucleonics roadmap is answering is:

> **Is nucleonics practical?**

It may be that manipulating nuclear states for the purposes of energy technology is sufficiently difficult to make it more of an academic curiosity than an enabler of new technology.

From the energy perspective that our mission statement focusses on, practicality means that we need to be able to:

- Accelerate nuclear transitions by many orders of magnitude
- Transfer nuclear energy non-radiatively between nuclei
- Control nuclear transitions with low frequency stimulation
- Extract nuclear energy in benign forms

From a theoretical perspective, nucleonics does seem practical. In 2024, [Hagelstein et.al](https://arxiv.org/pdf/2501.08338) showed for the first time that known quantum physics principles could be applied to satisfy the above criteria and moreover explain long standing experimental nuclear anomalies found in LENR experiments.

Hagelstein's theoretical framework relies on combining several pieces of well established quantum physics in a novel way. The central question is whether Mother Nature respects this novel combination. The framework needs to be stress tested in several carefully designed experiments in order to pass the ultimate litmus test.

## Accelerating nuclear transitions by many orders of magnitude

One of the key bits of physics responsible for accelerating nuclear transitions is Dicke Superradiance. First proposed by [Dicke in the 1950s](https://doi.org/10.1103/PhysRev.93.99) for atoms and then extended by [Terhune and Baldwin in the 1960s](https://doi.org/10.1103/physrevlett.14.589) for nuclei, Dicke's model showed that $N$ particles can radiate/decay collectively up to $N^2$ faster than an individual particle. In a solid lattice, the number density is $\sim 10^{28} \ \rm m^{-3}$ and so Dicke enhancements can in principle be extremely large.

The challenge for nuclear superradaince is how close the nuclei need to be for collective emission to occur. Dicke's model is based on all $N$ nuclei being coupled together through an interaction with a common oscillating field. In order to get the full $N^2$ enhancement, all the nuclei need to be located within a single wavelength of one other. The wavelength is determined by the frequency (and hence energy) of the field oscillations. Typically the frequency is chosen to be matched to the nuclear transitions which mostly have energies of $E > 10 \ \rm keV$ and wavelengths of $\lambda < 0.1 \ \rm nm$. In a typical solid lattice you can fit at most one particle in cube whose sides are  given by such a small wavelength. [Chumakov et.al 2017](https://www.nature.com/articles/s41567-017-0001-z) achieved only small levels of nuclear superradiance ($\sim 10 \times$ rate enhancements) in $\rm ^{57}Fe$ experiments because of this.

Much larger Dicke enhancement rates are required for practical applications. Bridging the rate enhancement gap can in principle be achieved by choosing a low frequency (and hence long wavelength) that's mismatched with respect to the nuclear transitions. In such a set-up, a nucleus radiates a number of smaller energy oscillator quanta instead of a single large one. The challenge with this approach is that the more quanta that are involved, the slower the process becomes - this can dominate over Dicke enhancements depending on the specific details.

There is a novelty in demonstrating Dicke enhancements with oscillator and nuclei that are mismatched. It would therefore be preferable to separate that novelty from the specific demonstration of extremely large nuclear Dicke enhancements. One way to do this is to repeat the Chumakov experiment but instead of using $\rm ^{57}Fe$ we use [$\rm ^{229m}Th$](https://en.wikipedia.org/wiki/Isotopes_of_thorium#Thorium-229m).

$\rm ^{229}Th$ has a nuclear isomer $\rm ^{229m}Th$ whose existence was hypothesised for many years but [was only nailed down in 2024](https://link.springer.com/article/10.1140/epjs/s11734-024-01098-2). $\rm ^{229m}Th$ is unique in that it has an extremely low energy nuclear transition energy of $8.36 \ \rm eV$ which corresponds to a wavelength of $148 \ \rm nm$. A cube of this size would contain about $3\times 10^7$ nuclei at typical solid density - more than enough to observe some very large Dicke enhancements. 

The specifics of $\rm ^{229m}Th$ require us to arrange the system to:

- Maximise radiative decay over internal conversion. This can be achieved by excite half of the $\rm ^{229m}Th$ nuclei instead of all of them will give us $N^2$ enhancement of radiation and only $N/2$ enhancement of internal conversion.
- Minimise the reflection of the UV laser light from the surface. This can be achived by embedding the $\rm ^{229m}Th$ into an UV transparent material.

## Transferring nuclear energy non-radiatively between nuclei

Excitation transfer (also known as resonance energy transfer) is the key bit of physics responsible for moving energy from a donor system to a receiver system without the emission/absorption of radiation. [Supertransfer](https://doi.org/10.1088/1367-2630/12/7/075020) is the Dicke acceleration of this process due to the coupling of many donors/receivers to a shared oscillator.

There are numerous examples of excitation transfer dynamics at the atomic scale such as exciton diffusion at room temperature e.g., [photosynthetic systems](https://www.annualreviews.org/content/journals/10.1146/annurev-physchem-040214-121713) and [organic semiconductors](https://www.nature.com/articles/s41467-022-30308-5). Supertransfer in engineered systems has also been demonstrated by Park and colleagues in a [2015 Nature Materials paper](https://www.nature.com/articles/nmat4448) at the atomic scale at room temperature.

Nuclear supertransfer has not yet been demonstrated. 

We seek to adapt the [Chumakov et.al 2017](https://www.nature.com/articles/s41567-017-0001-z) experiment to make it work for supertransfer instead of a superradiance. More specifically, we propose exciting $\rm ^{57}Fe$ nuclei and transferring the $14 \ \rm keV$ of nuclear energy to $\rm Pb$ atoms. The transfer needs to be achieved in a very short timescale in order to beat the natural radiative decay of the excited $\rm ^{57}Fe$. In other words, we need supertransfer.

In order to couple the $\rm ^{57}Fe$ and $\rm Pb$ together non-radiatively, we need a mismatched oscillator and nuclei. Supertransfer does not suffer the same challenges as superradiance when using mismatched oscillator and nuclei. This is because superradiance involves the radiation of many small quanta, whereas supertransfer involves none - it is radiationless. We propose using a low frequency (long wavelength) oscillating magnetic field provided by a solenoid to involve a macroscopically large number of nuclei that will produce the Dicke enhancements that we need. 

The advantage of using a magnetic field is that it's a well established coupling mechanism that's suitable for demonstration purposes. The disadvantages are:

-  Magnetic dipole coupling is weak and so limits how practical this form of coupling can be
- Excitation transfer rates with this coupling can be insensitive to frequency (depending on the details) so it does not give us a reliable way to control the transition rates.

## Controlling nuclear transitions with low frequency stimulation

For energy applications, it is necessary to have a type of nuclear coupling that's both strong and tuneable. For practical purposes such tunability more easily achieved via low frequency stimulation because it typically requires smaller and less expensive equipment.

Peter Hagelstein [first proposed](https://arxiv.org/abs/1201.4377) a novel form of relativistic phonon nuclear coupling in 2012. It relies on a previously neglected aspect of relativity that couples vibrational energy (aka phonons) to nuclear energy. Relativistic phonon nuclear coupling is many orders of magnitude stronger than the electromagnetic coupling that's typically considered for nuclear interactions. It's also frequency dependent and so represents a controllable form nuclear coupling.

Although the most developed form of relativistic phonon nuclear coupling was [peer reviewed in 2023](https://iopscience.iop.org/article/10.1088/1361-6455/acf3be), it has yet to be experimentally verified.

We propose a nuclear excitation transfer experiment in which we seek to observe the spreading out of emission of excited $\rm ^{57}Fe$ as the nuclear energy is transferred from the excited $\rm ^{57}Fe$ to neighbouring ground state $\rm ^{57}Fe$. The excited nuclei are to generated from the decay of $\rm ^{57}Co$ that's deposited on the $\rm ^{57}Fe$ surface and the phonon coupling is generated via stimulation of the surface with a $\rm THz$ laser.

## Extracting nuclear energy in benign forms

Relativistic phonon nuclear coupling is so strong that experiments will be in a form of deep strong coupling regime that was first proposed as an academic curiosity in 2010 by [Casanova at.al](https://journals.aps.org/prl/abstract/10.1103/PhysRevLett.105.263603) and only recently experimentally observed in "artificial atoms" in [2017 by Bayer at.al](https://pubs.acs.org/doi/10.1021/acs.nanolett.7b03103). The behaviour in this regime is very different from the usual weak coupling regime that informs peoples' intuitions via "perturbation theory".

Deep strong coupling allows a free exchange of energy between the particles and the field. For the phonon-nuclear system this represents a free exchange of nuclear and vibrational energy. This presents an opportunity to "bleed off" nuclear energy into vibrational energy and ultimately into heat. It also presents the reverse opportunity to turn vibrational energy into nuclear energy, e.g. creating a controllable x-ray laser.

Unlike artificial atoms, deep strong coupling for real atoms and nuclei requires a minimum field energy. Electromagnetic coupling is too small to make deep strong coupling possible for real atoms and nuclear. However, relativistic phonon nuclear coupling is so strong that only a very modest field energy of $\sim \rm 10 \ mJ$ is needed.

We propose to test the free exchange of nuclear and vibrational energy by creating $>10 \ \rm mJ$ of phonon energy inside an otherwise stable material using a $\rm GHz$ piezoelectric driver and then detecting the gamma ray emission. Heavier elements give the largest coupling and header materials produce longer lasting phonons and so tungsten is an ideal choice.
