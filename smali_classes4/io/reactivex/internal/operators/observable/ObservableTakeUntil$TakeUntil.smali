.class public final Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntil;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableTakeUntil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TakeUntil"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "TU;>;"
    }
.end annotation


# instance fields
.field private final frc:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

.field private final serial:Lio/reactivex/observers/SerializedObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/observers/SerializedObserver<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lio/reactivex/internal/operators/observable/ObservableTakeUntil;


# direct methods
.method public constructor <init>(Lio/reactivex/internal/operators/observable/ObservableTakeUntil;Lio/reactivex/internal/disposables/ArrayCompositeDisposable;Lio/reactivex/observers/SerializedObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/disposables/ArrayCompositeDisposable;",
            "Lio/reactivex/observers/SerializedObserver<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntil;->this$0:Lio/reactivex/internal/operators/observable/ObservableTakeUntil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntil;->frc:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntil;->serial:Lio/reactivex/observers/SerializedObserver;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntil;->frc:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;->dispose()V

    .line 2
    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntil;->serial:Lio/reactivex/observers/SerializedObserver;

    invoke-virtual {p0}, Lio/reactivex/observers/SerializedObserver;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntil;->frc:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;->dispose()V

    .line 2
    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntil;->serial:Lio/reactivex/observers/SerializedObserver;

    invoke-virtual {p0, p1}, Lio/reactivex/observers/SerializedObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntil;->frc:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    invoke-virtual {p1}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;->dispose()V

    .line 2
    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntil;->serial:Lio/reactivex/observers/SerializedObserver;

    invoke-virtual {p0}, Lio/reactivex/observers/SerializedObserver;->onComplete()V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntil;->frc:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;->setResource(ILio/reactivex/disposables/Disposable;)Z

    return-void
.end method
