using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BookCatalog.Contracts.Helpers
{
    public enum ResultType
    {
        Ok,
        Invalid,
        NotFound,
        Unexpected
    }

    public abstract class Result
    {
        public abstract ResultType Type { get; }
        public abstract string Error { get; }
        public bool IsSuccessful
        {
            get => Type == ResultType.Ok;
        }
    }

    public abstract class Result<T> : Result
    {
        public abstract T Data { get; }
    }

    public class SuccessResult : Result
    {
        public override ResultType Type => ResultType.Ok;
        public override string Error => null;
    }
    public class SuccessResult<T> : Result<T>
    {
        private readonly T _data;
        public SuccessResult(T data)
        {
            _data = data;
        }
        public override ResultType Type => ResultType.Ok;
        public override string Error => null;
        public override T Data => _data;
    }

    public class InvalidResult : Result
    {
        private string _error;
        public InvalidResult(string error = null)
        {
            _error = error;
        }
        public override ResultType Type => ResultType.Invalid;
        public override string Error => _error ?? "The input was invalid.";
    }
    public class InvalidResult<T> : Result<T>
    {
        private string _error;
        public InvalidResult(string error = null)
        {
            _error = error;
        }
        public override ResultType Type => ResultType.Invalid;
        public override string Error => _error ?? "The input was invalid";
        public override T Data => default;
    }

    public class NotFoundResult : Result
    {
        private string _error;
        public NotFoundResult(string error = null)
        {
            _error = error;
        }
        public override ResultType Type => ResultType.NotFound;
        public override string Error => _error ?? "Not found";
    }
    public class NotFoundResult<T> : Result<T>
    {
        private string _error;
        public NotFoundResult(string error = null)
        {
            _error = error;
        }
        public override ResultType Type => ResultType.NotFound;
        public override string Error => _error ?? "Not found";
        public override T Data => default;
    }
}
