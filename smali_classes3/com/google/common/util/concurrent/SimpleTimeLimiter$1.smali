.class public Lcom/google/common/util/concurrent/SimpleTimeLimiter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/SimpleTimeLimiter;->newProxy(Ljava/lang/Object;Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/common/util/concurrent/SimpleTimeLimiter;

.field public final synthetic val$interruptibleMethods:Ljava/util/Set;

.field public final synthetic val$target:Ljava/lang/Object;

.field public final synthetic val$timeoutDuration:J

.field public final synthetic val$timeoutUnit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/SimpleTimeLimiter;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;Ljava/util/Set;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/util/concurrent/SimpleTimeLimiter$1;->this$0:Lcom/google/common/util/concurrent/SimpleTimeLimiter;

    iput-object p2, p0, Lcom/google/common/util/concurrent/SimpleTimeLimiter$1;->val$target:Ljava/lang/Object;

    iput-wide p3, p0, Lcom/google/common/util/concurrent/SimpleTimeLimiter$1;->val$timeoutDuration:J

    iput-object p5, p0, Lcom/google/common/util/concurrent/SimpleTimeLimiter$1;->val$timeoutUnit:Ljava/util/concurrent/TimeUnit;

    iput-object p6, p0, Lcom/google/common/util/concurrent/SimpleTimeLimiter$1;->val$interruptibleMethods:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p3    # [Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    new-instance v1, Lcom/google/common/util/concurrent/SimpleTimeLimiter$1$1;

    invoke-direct {v1, p0, p2, p3}, Lcom/google/common/util/concurrent/SimpleTimeLimiter$1$1;-><init>(Lcom/google/common/util/concurrent/SimpleTimeLimiter$1;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/google/common/util/concurrent/SimpleTimeLimiter$1;->this$0:Lcom/google/common/util/concurrent/SimpleTimeLimiter;

    iget-wide v2, p0, Lcom/google/common/util/concurrent/SimpleTimeLimiter$1;->val$timeoutDuration:J

    iget-object v4, p0, Lcom/google/common/util/concurrent/SimpleTimeLimiter$1;->val$timeoutUnit:Ljava/util/concurrent/TimeUnit;

    iget-object p0, p0, Lcom/google/common/util/concurrent/SimpleTimeLimiter$1;->val$interruptibleMethods:Ljava/util/Set;

    .line 3
    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 4
    invoke-static/range {v0 .. v5}, Lcom/google/common/util/concurrent/SimpleTimeLimiter;->access$100(Lcom/google/common/util/concurrent/SimpleTimeLimiter;Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
