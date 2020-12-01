.class public Ltrycatch/TestLoopInTryCatch;
.super Ljava/lang/Object;
.source "SourceFile"

.method public static test()V
    .registers 6

    :try_start

    :loop

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v1, v2, :cond

    const/4 v3, 0x2

    if-eq v1, v3, :cond

    goto :loop

    :cond
    if-eq v1, v2, :end

    return-void

    :try_end
    .catch Ljava/io/IOException; {:try_start .. :try_end} :end

    :end
    return-void
.end method
