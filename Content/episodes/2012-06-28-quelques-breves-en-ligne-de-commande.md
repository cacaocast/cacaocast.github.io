---
date: 2012-06-28 00:00
path: /episodes/quelques-breves-en-ligne-de-commande
layout: Episode
---
# Quelques brèves en ligne de commande
<p>Tel que nous l'avons mentionné dans l'épisode 86, voici quelques astuces en ligne de commande:</p>
<ul><li>Obtenir la liste de tous les utilitaires &ldquo;Command-line&rdquo; Xcode (une seule ligne)<br/><p>lsbom -fls /var/db/receipts/com.apple.pkg.DeveloperToolsCLILeo.bom <br/> </p>
</li>
<li>Pour effacer lesdits utilitaires, faites passer le résultat dans rm (toujours une seule ligne)<br/><p>lsbom -fls /var/db/receipts/com.apple.pkg.DeveloperToolsCLILeo.bom | (cd / ; sudo xargs rm)</p>
 <br/> </li>
<li>Pour afficher les images non-retina sur votre MacBook Pro Retina avec une teinte rouge:<br/><p>defaults write -g CGContextHighlight2xScaledImages YES<br/></p>
(inversez avec un NO, bien sûr) <br/> </li>
<li>Pour effectuer une signature en ligne de commande, alors que le Trousseau d'Accès est indisponible:<br/> 
<p>security import … -T /usr/bin/codesign</p>
</li>
</ul><div>Voilà!</div>
