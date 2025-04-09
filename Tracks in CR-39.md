---
author: "Matt Lilley"
---

# What is CR-39

CR-39 (Columbia Resin #39) is a lightweight, impact-resistant plastic polymer. It is a thermosetting plastic derived from allyl diglycol carbonate (ADC) monomers. 

When the ADC monomer ($\rm C_{12} H_{18} O_7$) is polymerised, the CR-39 structure contains allyl groups ($\rm-CH_2-CH=CH_2$) and carbonate ($\rm -COO-$) functional groups.

# Radiation detection

## Charged particles

When high-energy charged particles (e.g., alpha particles, protons, or heavy ions) pass through CR-39, they break chemical bonds along their path, creating latent damage tracks in the polymer. These tracks are invisible initially but weaken the polymer structure at those points. The tracks can be made visible through an etching process.

When the exposed CR-39 is submerged in a chemical etchant (usually 6M NaOH or KOH at 60–70°C), the etching solution dissolves the damaged regions faster than the undamaged areas, making the tracks visible under a microscope. The resulting track diameter and shape provide information about the energy and type of radiation.

## Neutrons

Unlike charged particles such as alpha particles or protons, neutrons are electrically neutral and do not directly ionize or break chemical bonds as they pass through CR-39. However, they can still be detected indirectly through interactions with the atomic nuclei in the CR-39 polymer or any added materials. Two primary mechanisms enable neutron detection in CR-39: **proton recoil via elastic scattering** (the most common method) and **secondary reactions with carbon or oxygen** (less common). Additionally, in some cases, fission fragments from neutron-induced reactions with contaminants or external converters can contribute to detection.

### Proton Recoil (Elastic Scattering)

The proton recoil method relies on elastic scattering between incident neutrons and hydrogen nuclei (protons) within the CR-39 polymer. CR-39 contains a significant amount of hydrogen due to its chemical composition ($\rm C_{12} H_{18} O_7$), making this mechanism effective, particularly for fast neutrons.

- **Process**: When a fast neutron collides with a hydrogen nucleus, it transfers some of its kinetic energy to the proton. The recoiling proton, being a charged particle, then travels through the CR-39, breaking chemical bonds and creating a latent damage track along its path—similar to tracks produced by other charged particles.
- **Detection**: These latent tracks are revealed through the same chemical etching process (e.g., submersion in 6M NaOH or KOH at 60–70°C) used for charged particles. The size and shape of the etched tracks depend on the energy of the recoiling proton, which correlates with the energy of the incident neutron.
- **Advantages**: This method is highly effective for detecting fast neutrons (typically above ~100 keV), as the energy transfer efficiency in elastic scattering is maximized when the target nucleus (hydrogen) has a mass similar to the neutron.
- **Limitations**: Thermal neutrons (low-energy neutrons, ~0.025 eV) are less likely to produce detectable recoil protons due to their low kinetic energy, making this method less sensitive to them without additional techniques.

### Secondary Reactions with Carbon or Oxygen

Neutrons can also interact with the carbon ($\rm C$) or oxygen ($\rm O$) nuclei in the CR-39 polymer, though these reactions are less frequent than proton recoil due to lower interaction cross-sections and higher energy thresholds.

- **Process**: When a high-energy neutron (typically in the MeV range) collides with a carbon or oxygen nucleus, it may induce nuclear reactions such as ($\rm n, p$) or ($\rm n, \alpha$). For example:
  - $\rm ^{12}C(n, p)^{12}B$: A neutron knocks out a proton, leaving a boron isotope.
  - $\rm ^{16}O(n, \alpha)^{13}C$: A neutron triggers the emission of an alpha particle, producing a carbon isotope.
- **Detection**: The emitted charged particles (protons or alpha particles) create latent tracks in the CR-39, which are then etched and analyzed microscopically. The track characteristics can provide clues about the reaction type and neutron energy.
- **Significance**: These reactions are more relevant for very high-energy neutrons but contribute less to overall detection compared to proton recoil, since the abundance of hydrogen in CR-39 and the higher cross-section for neutron scattering with hydrogen make proton recoil more likely, while nuclear reactions with carbon or oxygen are rarer and require more energy.
### Fission Fragments with Contaminants

In some specialized applications, CR-39 can detect neutrons by incorporating external materials or contaminants that undergo neutron-induced fission.

- **Process**: Materials such as uranium-235, thorium-232, or boron-10 can be placed in contact with or embedded in the CR-39. When neutrons (especially thermal neutrons) interact with these nuclei, they may trigger fission (in uranium or thorium) or reactions like $\rm ^{10}B(n, \alpha)^{7}Li$. The resulting fission fragments or alpha particles, being highly energetic charged particles, produce distinct damage tracks in the CR-39.
- **Detection**: After etching, these tracks are typically larger and more pronounced than those from proton recoil, allowing differentiation of neutron-induced fission events.
- **Applications**: This method is particularly useful for detecting thermal neutrons, which are inefficiently detected via proton recoil. External converter layers (e.g., boron or uranium coatings) are often used to enhance sensitivity in neutron dosimetry or environmental monitoring.

### Practical Considerations

- **Energy Sensitivity**: The effectiveness of neutron detection in CR-39 depends on the neutron energy spectrum. Fast neutrons are best detected via proton recoil, while thermal neutrons require converters or fissionable materials.
- **Etching Conditions**: The etching process must be optimized to distinguish neutron-induced tracks from background noise or tracks caused by other radiation types.
- **Analysis**: Microscopic analysis of track density, size, and shape, often combined with calibration against known neutron sources, allows researchers to quantify neutron flux and energy.
