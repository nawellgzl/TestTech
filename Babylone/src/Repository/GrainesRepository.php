<?php

namespace App\Repository;

use App\Entity\Graines;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Common\Persistence\ManagerRegistry;

/**
 * @method Graines|null find($id, $lockMode = null, $lockVersion = null)
 * @method Graines|null findOneBy(array $criteria, array $orderBy = null)
 * @method Graines[]    findAll()
 * @method Graines[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class GrainesRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Graines::class);
    }

    // /**
    //  * @return Graines[] Returns an array of Graines objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('g')
            ->andWhere('g.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('g.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?Graines
    {
        return $this->createQueryBuilder('g')
            ->andWhere('g.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
