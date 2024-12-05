const form_login = document.querySelector("#cont-form");

if (form_login) {
  form_login.addEventListener("submit", async (e) => {
    e.preventDefault();

    const dadosForm = new FormData(form_login);

    const email = dadosForm.get("email");
    const senha = dadosForm.get("senha");
    const nivel = dadosForm.get("nivel");

    if (!email || !senha || !nivel) {
      Swal.fire({
        text: "Preencha todos os campos.",
        icon: "error",
        confirmButtonColor: "#3085d6",
        confirmButtonText: "Fechar",
      });
      return;
    }

    try {
      const dados = await fetch("/src/scripts/login.php", {
        method: "POST",
        body: dadosForm,
      });

      const resposta = await dados.json();

      if (resposta["status-dir"]) {
        Swal.fire({
          text: resposta["msg"],
          icon: "success",
          confirmButtonColor: "#3085d6",
          confirmButtonText: "Fechar",
        }).then(() => {
          form_login.reset();
          window.location.href = "/src/diretoria/menu.php";
        });
        if (resposta["status-prof"]) {
          Swal.fire({
            text: resposta["msg"],
            icon: "success",
            confirmButtonColor: "#3085d6",
            confirmButtonText: "Fechar",
          }).then(() => {
            form_login.reset();
            window.location.href = "/src/professor/menu.php";
          });
        }
        if (resposta["status-aluno"]) {
          Swal.fire({
            text: resposta["msg"],
            icon: "success",
            confirmButtonColor: "#3085d6",
            confirmButtonText: "Fechar",
          }).then(() => {
            form_login.reset();
            window.location.href = "/src/aluno/menu.php";
          });
        }
      } else {
        Swal.fire({
          text: resposta["msg"],
          icon: "error",
          confirmButtonColor: "#3085d6",
          confirmButtonText: "Fechar",
        });
      }
    } catch (error) {
      Swal.fire({
        text: "Ocorreu um erro ao tentar fazer login. Tente novamente mais tarde.",
        icon: "error",
        confirmButtonColor: "#3085d6",
        confirmButtonText: "Fechar",
      });
      console.error("Erro ao realizar login:", error);
    }
  });
}
