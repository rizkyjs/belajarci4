<?= $this->extend('layout/template'); ?>
<?= $this->section('content'); ?>
<div class="container mt-3">
    <div class="row">
        <div class="col">

            <div class="card text-bg-dark mb-3" style="max-width: 540px;">
                <div class="row g-0">
                    <div class="col-md-4">
                        <img src="/img/<?= $komik['sampul']; ?>" class="img-fluid rounded-start" alt="...">
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h5 class="card-title"> <?= $komik['judul']; ?></h5>
                            Penulis: <p class="card-text"><?= $komik['penulis']; ?></p>
                            <p class="card-text">Penerbit: <?= $komik['penerbit']; ?></p>
                            <hr>
                            <a class="btn btn-warning" href="/komik/edit/<?= $komik['slug']; ?>">Edit</a>

                            <form action="/komik/<?= $komik['id']; ?>" method="post" class="d-inline">
                                <?= csrf_field(); ?>
                                <button type="submit" class="btn btn-danger" onclick="return confirm('Apakah Anda yakin?')">Delete</button>
                                <input type="hidden" name="_method" value="DELETE">
                            </form>

                            <hr>

                            <a href="/komik">Kembali ke daftar Komik</a>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>