# 11. Backup y Restauración del Entorno

Asegura que tu entorno sea fácil de restaurar o migrar con buenas prácticas de copia de seguridad.

---

## 11.1. Backup de dotfiles

- Versiona tu configuración en un repositorio git privado o público:
  ```sh
  cd ~/.local/share/chezmoi
  git add .
  git commit -m "Backup dotfiles"
  git push
  ```

- Puedes automatizar backups (por ejemplo, con un cron job que haga push cada semana).

---

## 11.2. Backup del sistema

- Considera usar **Timeshift** para snapshots completos (especialmente si usas Btrfs):
  ```sh
  sudo pacman -S timeshift
  ```
- Para respaldos simples de tu home:
  ```sh
  tar czvf backup-home-$(date +%F).tar.gz ~/
  ```

---

## 11.3. Restauración en una nueva máquina

1. Instala Arch, Hyprland y chezmoi como hiciste en los primeros pasos.
2. Clona tu repo de dotfiles:
   ```sh
   chezmoi init <tu-usuario>/<repo>
   chezmoi apply
   ```
3. Instala los paquetes listados en tu documentación/readme.

---

## 11.4. Notas

- Actualiza tu README si cambias la estructura de tus dotfiles.
- Considera usar GitHub, GitLab o un backup en la nube para almacenamiento externo.
- Si tienes scripts personalizados, documenta su uso y restauración.

---
