.class public abstract Ll6/h8$a;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Ll6/h8;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll6/h8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll6/h8$a$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "android.os.IPowerManager"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static K0(Landroid/os/IBinder;)Ll6/h8;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ll6/h8$a$a;

    invoke-direct {v0, p0}, Ll6/h8$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method
