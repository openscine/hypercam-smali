.class public Ld/o/g0/u0/x;
.super Ld/o/g0/u0/r;
.source "SourceFile"


# static fields
.field private static final d:Ljava/lang/String; = "TiltShiftParallelRenderer"


# instance fields
.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field private p:Ljava/nio/FloatBuffer;

.field public q:Ljava/nio/FloatBuffer;

.field private r:Ld/o/g0/p0/g;

.field private s:Ld/o/g0/u0/b0;

.field private t:Ld/o/g0/u0/e0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ld/o/g0/u0/r;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ld/o/g0/u0/x;->e:I

    .line 3
    new-instance v0, Ld/o/g0/u0/b0;

    invoke-direct {v0}, Ld/o/g0/u0/b0;-><init>()V

    iput-object v0, p0, Ld/o/g0/u0/x;->s:Ld/o/g0/u0/b0;

    .line 4
    new-instance v0, Ld/o/g0/u0/e0;

    invoke-direct {v0}, Ld/o/g0/u0/e0;-><init>()V

    iput-object v0, p0, Ld/o/g0/u0/x;->t:Ld/o/g0/u0/e0;

    return-void
.end method

.method private g()[F
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [F

    .line 1
    iget-object p0, p0, Ld/o/g0/u0/x;->r:Ld/o/g0/p0/g;

    iget-object v1, p0, Ld/o/g0/p0/g;->d:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    const/4 v3, 0x0

    aput v2, v0, v3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    const/4 v2, 0x1

    aput v1, v0, v2

    iget-object v1, p0, Ld/o/g0/p0/g;->e:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    const/4 v3, 0x2

    aput v2, v0, v3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    const/4 v2, 0x3

    aput v1, v0, v2

    iget p0, p0, Ld/o/g0/p0/g;->g:F

    const/4 v1, 0x4

    aput p0, v0, v1

    return-object v0
.end method


# virtual methods
.method public a()Ld/o/g0/o0/e;
    .locals 0

    .line 1
    sget-object p0, Ld/o/g0/o0/e;->s:Ld/o/g0/o0/e;

    return-object p0
.end method

.method public b(Ld/o/g0/h0;)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ld/o/g0/u0/r;->b:Z

    if-eqz v0, :cond_0

    const-string p0, "TiltShiftParallelRenderer"

    const-string p1, "skip onAttach, this renderer already be attached"

    .line 2
    invoke-static {p0, p1}, Ld/o/g0/r0/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Ld/o/g0/u0/r;->b(Ld/o/g0/h0;)V

    .line 4
    invoke-virtual {p0}, Ld/o/g0/u0/x;->i()V

    .line 5
    invoke-virtual {p0}, Ld/o/g0/u0/x;->h()V

    .line 6
    iget-object v0, p0, Ld/o/g0/u0/x;->s:Ld/o/g0/u0/b0;

    invoke-virtual {v0, p1}, Ld/o/g0/u0/b0;->b(Ld/o/g0/h0;)V

    .line 7
    iget-object p0, p0, Ld/o/g0/u0/x;->t:Ld/o/g0/u0/e0;

    invoke-virtual {p0, p1}, Ld/o/g0/u0/e0;->b(Ld/o/g0/h0;)V

    return-void
.end method

.method public c(Ld/o/g0/p0/d;)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attribute"
        }
    .end annotation

    .line 1
    move-object v0, p1

    check-cast v0, Ld/o/g0/p0/g;

    iput-object v0, p0, Ld/o/g0/u0/x;->r:Ld/o/g0/p0/g;

    .line 2
    iget-object v0, p0, Ld/o/g0/u0/x;->s:Ld/o/g0/u0/b0;

    invoke-virtual {v0, p1}, Ld/o/g0/u0/b0;->c(Ld/o/g0/p0/d;)V

    .line 3
    iget-object p0, p0, Ld/o/g0/u0/x;->t:Ld/o/g0/u0/e0;

    invoke-virtual {p0, p1}, Ld/o/g0/u0/e0;->c(Ld/o/g0/p0/d;)V

    return-void
.end method

.method public d()V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-boolean v0, p0, Ld/o/g0/u0/r;->b:Z

    const-string v1, "TiltShiftParallelRenderer"

    if-nez v0, :cond_0

    const-string p0, "skip onDetach, this renderer already be detached"

    .line 2
    invoke-static {v1, p0}, Ld/o/g0/r0/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0}, Ld/o/g0/u0/r;->d()V

    .line 4
    iget v0, p0, Ld/o/g0/u0/x;->e:I

    invoke-static {v0, v1}, Ld/o/k/h;->q(ILjava/lang/String;)V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Ld/o/g0/u0/x;->e:I

    .line 6
    iget-object v0, p0, Ld/o/g0/u0/x;->s:Ld/o/g0/u0/b0;

    invoke-virtual {v0}, Ld/o/g0/u0/b0;->d()V

    .line 7
    iget-object p0, p0, Ld/o/g0/u0/x;->t:Ld/o/g0/u0/e0;

    invoke-virtual {p0}, Ld/o/g0/u0/e0;->d()V

    return-void
.end method

.method public e(Ld/o/g0/j0;)I
    .locals 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renderParams"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ld/o/g0/u0/x;->r:Ld/o/g0/p0/g;

    if-nez v0, :cond_0

    const-string p0, "TiltShiftParallelRenderer"

    const-string v0, "skip render because attribute not ready yet!"

    .line 2
    invoke-static {p0, v0}, Ld/o/g0/r0/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p0, p1, Ld/o/g0/j0;->c:Ld/o/g0/n0/b;

    invoke-virtual {p0}, Ld/o/g0/n0/b;->c()I

    move-result p0

    return p0

    :cond_0
    const-string v0, "TiltShiftParallelRenderer::onRender"

    .line 4
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Ld/o/g0/u0/x;->s:Ld/o/g0/u0/b0;

    invoke-virtual {v0, p1}, Ld/o/g0/u0/b0;->e(Ld/o/g0/j0;)I

    .line 6
    invoke-virtual {p1}, Ld/o/g0/j0;->i()V

    .line 7
    iget-object v0, p0, Ld/o/g0/u0/x;->t:Ld/o/g0/u0/e0;

    invoke-virtual {v0, p1}, Ld/o/g0/u0/e0;->e(Ld/o/g0/j0;)I

    .line 8
    invoke-virtual {p1}, Ld/o/g0/j0;->i()V

    .line 9
    iget-object v0, p1, Ld/o/g0/j0;->j:Ld/o/g0/q0/k;

    invoke-virtual {v0}, Ld/o/g0/q0/k;->u()V

    .line 10
    iget-object v0, p1, Ld/o/g0/j0;->j:Ld/o/g0/q0/k;

    invoke-virtual {v0}, Ld/o/g0/q0/k;->k()V

    .line 11
    iget-object v0, p1, Ld/o/g0/j0;->d:Ld/o/g0/n0/b;

    invoke-virtual {v0}, Ld/o/g0/n0/b;->a()I

    move-result v0

    invoke-static {v0}, Ld/o/k/h;->j(I)V

    .line 12
    iget v0, p0, Ld/o/g0/u0/x;->e:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glIsProgram(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    iget v0, p0, Ld/o/g0/u0/x;->e:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 14
    iget v0, p0, Ld/o/g0/u0/x;->i:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 15
    iget v0, p0, Ld/o/g0/u0/x;->j:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 16
    invoke-virtual {p1}, Ld/o/g0/j0;->d()I

    move-result v0

    invoke-virtual {p1}, Ld/o/g0/j0;->a()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v2, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 17
    iget-object v0, p1, Ld/o/g0/j0;->j:Ld/o/g0/q0/k;

    invoke-virtual {p1}, Ld/o/g0/j0;->d()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Ld/o/g0/j0;->a()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v4, v3}, Ld/o/g0/q0/k;->r(FFFF)V

    .line 18
    iget-object v0, p1, Ld/o/g0/j0;->j:Ld/o/g0/q0/k;

    invoke-virtual {p1}, Ld/o/g0/j0;->d()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Ld/o/g0/j0;->a()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v3, v4}, Ld/o/g0/q0/k;->w(FFF)V

    .line 19
    iget-object v0, p1, Ld/o/g0/j0;->c:Ld/o/g0/n0/b;

    invoke-virtual {v0}, Ld/o/g0/n0/b;->c()I

    move-result v0

    iget-object v1, p1, Ld/o/g0/j0;->j:Ld/o/g0/q0/k;

    .line 20
    iget-object v3, p0, Ld/o/g0/u0/x;->r:Ld/o/g0/p0/g;

    iget-boolean v4, v3, Ld/o/g0/p0/g;->j:Z

    if-eqz v4, :cond_1

    iget-object v3, v3, Ld/o/g0/p0/g;->i:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ld/o/g0/j0;->d()I

    move-result v3

    .line 21
    :goto_0
    iget-object v4, p0, Ld/o/g0/u0/x;->r:Ld/o/g0/p0/g;

    iget-boolean v5, v4, Ld/o/g0/p0/g;->j:Z

    if-eqz v5, :cond_2

    iget-object v4, v4, Ld/o/g0/p0/g;->i:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ld/o/g0/j0;->a()I

    move-result v4

    .line 22
    :goto_1
    invoke-virtual {p0, v0, v1, v3, v4}, Ld/o/g0/u0/x;->j(ILd/o/g0/q0/k;II)V

    const/4 v0, 0x5

    const/4 v1, 0x4

    .line 23
    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 24
    invoke-static {v2}, Ld/o/k/h;->j(I)V

    .line 25
    iget v0, p0, Ld/o/g0/u0/x;->i:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 26
    iget p0, p0, Ld/o/g0/u0/x;->j:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 27
    iget-object p0, p1, Ld/o/g0/j0;->j:Ld/o/g0/q0/k;

    invoke-virtual {p0}, Ld/o/g0/q0/k;->s()V

    .line 28
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 29
    iget-object p0, p1, Ld/o/g0/j0;->d:Ld/o/g0/n0/b;

    invoke-virtual {p0}, Ld/o/g0/n0/b;->c()I

    move-result p0

    return p0

    .line 30
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid shader program. shaderProgram:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Ld/o/g0/u0/x;->e:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Ld/o/g0/u0/x;->p:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Ld/o/g0/q0/l;->g:[F

    invoke-static {v0}, Ld/o/g0/q0/l;->i([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Ld/o/g0/u0/x;->p:Ljava/nio/FloatBuffer;

    .line 3
    :cond_0
    iget-object v0, p0, Ld/o/g0/u0/x;->q:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_1

    .line 4
    sget-object v0, Ld/o/g0/q0/l;->i:[F

    invoke-static {v0}, Ld/o/g0/q0/l;->i([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Ld/o/g0/u0/x;->q:Ljava/nio/FloatBuffer;

    :cond_1
    return-void
.end method

.method public i()V
    .locals 2

    const/16 v0, 0xa

    .line 1
    invoke-static {v0}, Lcom/xiaomi/gl/ShaderManager;->a(I)I

    move-result v0

    iput v0, p0, Ld/o/g0/u0/x;->e:I

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 3
    iget v0, p0, Ld/o/g0/u0/x;->e:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ld/o/g0/u0/x;->f:I

    .line 4
    iget v0, p0, Ld/o/g0/u0/x;->e:I

    const-string v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ld/o/g0/u0/x;->g:I

    .line 5
    iget v0, p0, Ld/o/g0/u0/x;->e:I

    const-string v1, "sTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ld/o/g0/u0/x;->h:I

    .line 6
    iget v0, p0, Ld/o/g0/u0/x;->e:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ld/o/g0/u0/x;->i:I

    .line 7
    iget v0, p0, Ld/o/g0/u0/x;->e:I

    const-string v1, "aTexCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ld/o/g0/u0/x;->j:I

    .line 8
    iget v0, p0, Ld/o/g0/u0/x;->e:I

    const-string v1, "uAlpha"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ld/o/g0/u0/x;->k:I

    .line 9
    iget v0, p0, Ld/o/g0/u0/x;->e:I

    const-string v1, "uMaskAlpha"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ld/o/g0/u0/x;->l:I

    .line 10
    iget v0, p0, Ld/o/g0/u0/x;->e:I

    const-string v1, "uStep"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ld/o/g0/u0/x;->m:I

    .line 11
    iget v0, p0, Ld/o/g0/u0/x;->e:I

    const-string v1, "uInvertRect"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ld/o/g0/u0/x;->n:I

    .line 12
    iget v0, p0, Ld/o/g0/u0/x;->e:I

    const-string v1, "uEffectArray"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ld/o/g0/u0/x;->o:I

    return-void

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ": mProgram = 0"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j(ILd/o/g0/q0/k;II)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "textureId",
            "glState",
            "width",
            "height"
        }
    .end annotation

    move-object v0, p0

    .line 1
    iget v1, v0, Ld/o/g0/u0/x;->i:I

    iget-object v6, v0, Ld/o/g0/u0/x;->p:Ljava/nio/FloatBuffer;

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x8

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 2
    iget v7, v0, Ld/o/g0/u0/x;->j:I

    iget-object v12, v0, Ld/o/g0/u0/x;->q:Ljava/nio/FloatBuffer;

    const/4 v8, 0x2

    const/16 v9, 0x1406

    const/4 v10, 0x0

    const/16 v11, 0x8

    invoke-static/range {v7 .. v12}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 3
    iget v1, v0, Ld/o/g0/u0/x;->f:I

    invoke-virtual {p2}, Ld/o/g0/q0/k;->e()[F

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v3, v4, v2, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 4
    iget v1, v0, Ld/o/g0/u0/x;->g:I

    invoke-virtual {p2}, Ld/o/g0/q0/k;->i()[F

    move-result-object v2

    invoke-static {v1, v3, v4, v2, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const v1, 0x84c0

    .line 5
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v1, 0xde1

    move v2, p1

    .line 6
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 7
    iget v1, v0, Ld/o/g0/u0/x;->h:I

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 8
    iget v1, v0, Ld/o/g0/u0/x;->k:I

    invoke-virtual {p2}, Ld/o/g0/q0/k;->c()F

    move-result v2

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 9
    iget v1, v0, Ld/o/g0/u0/x;->m:I

    move/from16 v2, p3

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v2, v3, v2

    move/from16 v5, p4

    int-to-float v5, v5

    div-float/2addr v3, v5

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 10
    iget v1, v0, Ld/o/g0/u0/x;->l:I

    iget-object v2, v0, Ld/o/g0/u0/x;->r:Ld/o/g0/p0/g;

    iget v2, v2, Ld/o/g0/p0/g;->h:F

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 11
    iget v1, v0, Ld/o/g0/u0/x;->n:I

    iget-object v2, v0, Ld/o/g0/u0/x;->r:Ld/o/g0/p0/g;

    iget v2, v2, Ld/o/g0/p0/g;->f:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 12
    iget v1, v0, Ld/o/g0/u0/x;->o:I

    invoke-direct {p0}, Ld/o/g0/u0/x;->g()[F

    move-result-object v0

    const/4 v2, 0x5

    invoke-static {v1, v2, v0, v4}, Landroid/opengl/GLES20;->glUniform1fv(II[FI)V

    return-void
.end method
