<?php

namespace App\Form;

use App\Entity\Graines;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class GrainesType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('nom_graine')
            ->add('famille')
            ->add('plantation')
            ->add('recolte')
            ->add('visuel')
            ->add('conseils')
            ->add('stock')
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Graines::class,
        ]);
    }
}
