<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="App\Repository\GrainesRepository")
 */
class Graines
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=50)
     */
    private $nom_graine;

    /**
     * @ORM\Column(type="string", length=50)
     */
    private $famille;

    /**
     * @ORM\Column(type="string", length=50)
     */
    private $plantation;

    /**
     * @ORM\Column(type="string", length=50)
     */
    private $recolte;

    /**
     * @ORM\Column(type="text")
     */
    private $visuel;

    /**
     * @ORM\Column(type="text")
     */
    private $conseils;

    /**
     * @ORM\Column(type="integer", nullable=true)
     */
    private $stock;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getNomGraine(): ?string
    {
        return $this->nom_graine;
    }

    public function setNomGraine(string $nom_graine): self
    {
        $this->nom_graine = $nom_graine;

        return $this;
    }

    public function getFamille(): ?string
    {
        return $this->famille;
    }

    public function setFamille(string $famille): self
    {
        $this->famille = $famille;

        return $this;
    }

    public function getPlantation(): ?string
    {
        return $this->plantation;
    }

    public function setPlantation(string $plantation): self
    {
        $this->plantation = $plantation;

        return $this;
    }

    public function getRecolte(): ?string
    {
        return $this->recolte;
    }

    public function setRecolte(string $recolte): self
    {
        $this->recolte = $recolte;

        return $this;
    }

    public function getVisuel(): ?string
    {
        return $this->visuel;
    }

    public function setVisuel(string $visuel): self
    {
        $this->visuel = $visuel;

        return $this;
    }

    public function getConseils(): ?string
    {
        return $this->conseils;
    }

    public function setConseils(string $conseils): self
    {
        $this->conseils = $conseils;

        return $this;
    }

    public function getStock(): ?int
    {
        return $this->stock;
    }

    public function setStock(?int $stock): self
    {
        $this->stock = $stock;

        return $this;
    }
}
