% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/extractQR.R
\encoding{UTF-8}
\name{extract_QR}
\alias{extract_QR}
\title{Extraction d'un bilan qualité}
\usage{
extract_QR(matrix_output_file, sep = ";", dec = ",")
}
\arguments{
\item{matrix_output_file}{fichier CSV contenant la matrice des diagnostics. S'il n'est pas spécifié, une fenêtre s'ouvre
pour sélectionner le fichier.}

\item{sep}{séparateur de caractères utilisé dans le fichier csv (par défaut \code{sep = ";"})}

\item{dec}{séparateur décimal utilisé dans le fichier csv (par défaut \code{dec = ","})}
}
\value{
Un objet de type \code{\link{QR_matrix}}.
}
\description{
Permet d'extraire un bilan qualité à partir du fichier CSV contenant la matrice des diagnostics.
}
\details{
La fonction permet d'extraire un bilan qualité à partir d'un fichier csv contenant l'ensemble des
diagnostics (généralement fichier \emph{demetra_m.csv}).

Ce fichier peut être obtenu en lançant le cruncher (\code{\link{cruncher}} ou \code{\link{cruncher_and_param}}) avec
l'ensemble des paramètres de base pour les paramètres à exporter et l'option \code{csv_layout = "vtable"} (par défaut)
pour le format de sortie des fichiers csv (option de \code{\link{cruncher_and_param}} ou de \code{\link{create_param_file}}
lors de la création du
fichier de paramètres).

Le résultat de cette fonction est un objet \code{\link{QR_matrix}} qui est une liste de trois paramètres :
\itemize{
\item le paramètre \code{modalities} est un \code{data.frame} contenant un ensemble de variables sous forme catégorielle
(Good, Uncertain, Bad, Severe).
\item le paramètre \code{values} est un \code{data.frame} contenant les valeurs associées aux indicateurs présents dans
\code{modalities} (i.e. : p-valeurs, statistiques, etc.) ainsi que des variables qui n'ont pas
de modalité (fréquence de la série et modèle ARIMA).
\item le paramètre \code{score_formula} est initié à \code{NULL} : il contiendra la formule utilisée pour
calculer le score (si le calcul est fait).
}
}
\examples{
\dontrun{
QR <- extract_QR()
print(QR)
# Pour extraire la matrice des modalitÃ©s :
QR$modalities
# Ou :
QR[["modalities"]]
}
}
\seealso{
Other QR_matrix functions: 
\code{\link{compute_score}()},
\code{\link{export_xlsx.QR_matrix}()},
\code{\link{export_xlsx.mQR_matrix}()},
\code{\link{extract_score}()},
\code{\link{rbind.QR_matrix}()},
\code{\link{sort}()},
\code{\link{weighted_score}()}
}
\concept{QR_matrix functions}
