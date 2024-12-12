const excluir_professor = document.querySelector("#excluir-professor");

if (excluir_professor) {
  excluir_professor.addEventListener("submit", async (e) => {
    e.preventDefault();

    const dadosForm = new FormData(excluir_professor);

    const id_professor = dadosForm.get("id_professor");

    try {
      const dados = await fetch("../backend/excluir-professor.php", {
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
        window.location.href = "index";
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
