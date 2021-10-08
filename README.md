# NCLXAstMetab
Scripts used in the project "NCLX &amp; Astrocyte Metabolism" at Universidade of São Paulo / Universidad de Salamanca

This repository is part of the PhD project "Ca2+ Mitocondrial no Sistema Nervoso Central e Regulação do Metabolismo Energético" from João Victor Cabral Costa, supervised by Dr. Alicia J. Kowaltowski (Instituto de Química / Universidade de São Paulo) and co-supervised by Juan Pedro Bolaños (Instituto de Biología Funcional y Genómica / Universidad de Salamanca), supported by Fundação de Amparo à Pesquisa do Estado de São Paulo (FAPESP #2013/07937-8, #2017/14713-0, #2019/22178-2, #2020/06970-5).

1) RoS_Y-maze.R
Script for manually analyzing Y-maze spontaneous alternation percentage.
Input data should be a .csv or .xlsx containing the identification of animals and sequences of alternatations between 3 arms named as "A", "B", and "C" (e.g., "ABACBACBABC"), with any size. More than one column may be used to allow analysis of time partitioning.
Data output is spontaneous alternation (%) in comparison to total entries (i.e., "(number of spontaneous alternations / (total entries - 2)) * 100")
