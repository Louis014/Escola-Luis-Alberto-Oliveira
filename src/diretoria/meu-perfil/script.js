const form_atualizar_email = document.querySelector("#form-cad");

if (form_atualizar_email) {
  form_atualizar_email.addEventListener("submit", async (e) => {
    e.preventDefault();

    const dadosForm = new FormData(form_atualizar_email);

    const email_pessoal = dadosForm.get("email-pessoal");

    try {
      const dados = await fetch("../backend/atualizar-email.php", {
        method: "POST",
        body: dadosForm,
      });

      const resposta = await dados.json();

      Swal.fire({
        text: resposta["msg"],
        icon: resposta["status"] ? "success" : "error",
        confirmButtonColor: "#3085d6",
        confirmButtonText: "Fechar",
      }).then(() => {
        location.reload();
      });
    } catch (error) {
      Swal.fire({
        text: "Erro ao processar. Tente novamente mais tarde.",
        icon: "error",
        confirmButtonColor: "#3085d6",
        confirmButtonText: "Fechar",
      });
    }
  });
}
