.class public Lk/u/a/a/a/a$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk/u/a/a/a/a$d;-><init>(Lk/u/a/a/a/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lk/u/a/a/a/a$d;


# direct methods
.method public constructor <init>(Lk/u/a/a/a/a$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk/u/a/a/a/a$d$a;->c:Lk/u/a/a/a/a$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk/u/a/a/a/a$d$a;->c:Lk/u/a/a/a/a$d;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lk/u/a/a/a/a$d;->d:J

    .line 2
    iget-object p0, p0, Lk/u/a/a/a/a$d$a;->c:Lk/u/a/a/a/a$d;

    iget-object p0, p0, Lk/u/a/a/a/a$c;->a:Lk/u/a/a/a/a$a;

    invoke-virtual {p0}, Lk/u/a/a/a/a$a;->a()V

    return-void
.end method
