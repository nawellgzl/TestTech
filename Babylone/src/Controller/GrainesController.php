<?php

namespace App\Controller;

use App\Entity\Graines;
use App\Form\GrainesType;
use App\Repository\GrainesRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("/graines")
 */
class GrainesController extends AbstractController
{
    /**
     * @Route("/", name="graines_index", methods={"GET"})
     */
    public function index(GrainesRepository $grainesRepository): Response
    {
        return $this->render('graines/index.html.twig', [
            'graines' => $grainesRepository->findAll(),
        ]);
    }

     /**
     * @Route("/calendrier", name="graines_calendrier")
     */
    public function calendar(GrainesRepository $grainesRepository): Response
    {
        return $this->render('graines/calendrier.html.twig', [
            'graines' => $grainesRepository->findAll(),
        ]);
    }

    /**
     * @Route("/new", name="graines_new", methods={"GET","POST"})
     */
    public function new(Request $request): Response
    {
        $graine = new Graines();
        $form = $this->createForm(GrainesType::class, $graine);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($graine);
            $entityManager->flush();

            return $this->redirectToRoute('graines_index');
        }

        return $this->render('graines/new.html.twig', [
            'graine' => $graine,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="graines_show", methods={"GET"})
     */
    public function show(Graines $graine): Response
    {
        return $this->render('graines/show.html.twig', [
            'graine' => $graine,
        ]);
    }

    /**
     * @Route("/{id}/edit", name="graines_edit", methods={"GET","POST"})
     */
    public function edit(Request $request, Graines $graine): Response
    {
        $form = $this->createForm(GrainesType::class, $graine);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('graines_index');
        }

        return $this->render('graines/edit.html.twig', [
            'graine' => $graine,
            'form' => $form->createView(),
        ]);
    }

  


    /**
     * @Route("/{id}", name="graines_delete", methods={"DELETE"})
     */
    public function delete(Request $request, Graines $graine): Response
    {
        if ($this->isCsrfTokenValid('delete'.$graine->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($graine);
            $entityManager->flush();
        }

        return $this->redirectToRoute('graines_index');
    }
}
